/*------------------------------------------------------------------------*/
/* MMCv3/SDv1/SDv2 (SPI mode) control module                              */
/*------------------------------------------------------------------------*/
/*
/  Copyright (C) 2011, ChaN, all right reserved.
/  Copyright (C) 2012, Milandr.
/
/ * This software is a free software and there is NO WARRANTY.
/ * No restriction on use. You can use, modify and redistribute it for
/   personal, non-profit or commercial products UNDER YOUR RESPONSIBILITY.
/ * Redistributions of source code must retain the above copyright notice.
/
/-------------------------------------------------------------------------*/

#define CCLK        80000000UL  /* cclk frequency [Hz] */
#define PCLK_SSP    80000000UL  /* PCLK frequency for SSP [Hz] */
#define SCLK_FAST   20000000UL  /* SCLK frequency under normal operation [Hz] */
#define SCLK_SLOW   400000UL  /* SCLK frequency under initialization [Hz] */

#define INS         1 /* Socket status (true:Inserted, false:Empty) */
#define WP          0 /* Card write protection (true:yes, false:no) */
#define _BV(bit) (1<<(bit))

#define SSPxDR      MDR_SSP2->DR
#define SSPxSR      MDR_SSP2->SR
#define SSPxCR0     MDR_SSP2->CR0
#define SSPxCR1     MDR_SSP2->CR1
#define SSPxCPSR    MDR_SSP2->CPSR
#define CS_LOW()    {MDR_PORTD->RXTX &= ~0x0008;} /* Set PD3 low */
#define CS_HIGH()   {MDR_PORTD->RXTX |= 0x0008;;} /* Set PD3 high */

#if PCLK_SSP * 1 == CCLK
#define PCLKDIV_SSP PCLKDIV_1
#elif PCLK_SSP * 2 == CCLK
#define PCLKDIV_SSP PCLKDIV_2
#elif PCLK_SSP * 4 == CCLK
#define PCLKDIV_SSP PCLKDIV_4
#elif PCLK_SSP * 8 == CCLK
#define PCLKDIV_SSP PCLKDIV_8
#else
#error Invalid clock frequency.
#endif


#define FCLK_FAST()     { SSPxCPSR = (PCLK_SSP / SCLK_FAST) & ~1; }
#define FCLK_SLOW()     { SSPxCPSR = (PCLK_SSP / SCLK_SLOW) & ~1; }


/*--------------------------------------------------------------------------

   Module Private Functions

---------------------------------------------------------------------------*/

#include "diskio.h"
#include <MDR32Fx.h>


/* MMC/SD command */
#define CMD0  (0)     /* GO_IDLE_STATE */
#define CMD1  (1)     /* SEND_OP_COND (MMC) */
#define ACMD41  (0x80+41) /* SEND_OP_COND (SDC) */
#define CMD8  (8)     /* SEND_IF_COND */
#define CMD9  (9)     /* SEND_CSD */
#define CMD10 (10)    /* SEND_CID */
#define CMD12 (12)    /* STOP_TRANSMISSION */
#define ACMD13  (0x80+13) /* SD_STATUS (SDC) */
#define CMD16 (16)    /* SET_BLOCKLEN */
#define CMD17 (17)    /* READ_SINGLE_BLOCK */
#define CMD18 (18)    /* READ_MULTIPLE_BLOCK */
#define CMD23 (23)    /* SET_BLOCK_COUNT (MMC) */
#define ACMD23  (0x80+23) /* SET_WR_BLK_ERASE_COUNT (SDC) */
#define CMD24 (24)    /* WRITE_BLOCK */
#define CMD25 (25)    /* WRITE_MULTIPLE_BLOCK */
#define CMD32 (32)    /* ERASE_ER_BLK_START */
#define CMD33 (33)    /* ERASE_ER_BLK_END */
#define CMD38 (38)    /* ERASE */
#define CMD55 (55)    /* APP_CMD */
#define CMD58 (58)    /* READ_OCR */

/* Card type flags (CardType) */
#define CT_MMC    0x01    /* MMC ver 3 */
#define CT_SD1    0x02    /* SD ver 1 */
#define CT_SD2    0x04    /* SD ver 2 */
#define CT_SDC    (CT_SD1|CT_SD2) /* SD */
#define CT_BLOCK  0x08    /* Block addressing */


static volatile
DSTATUS Stat = STA_NOINIT;  /* Physical drive status */

static volatile
UINT Timer1, Timer2;  /* 1kHz decrement timer stopped at zero (disk_timerproc()) */

static
BYTE CardType;      /* Card type flags */



/*-----------------------------------------------------------------------*/
/* Send/Receive data to the MMC  (Platform dependent)                    */
/*-----------------------------------------------------------------------*/

/* Exchange a byte */
static
BYTE xchg_spi (
  BYTE dat  /* Data to send */
)
{
  SSPxDR = dat;
  while (SSPxSR & 0x10) ;
  return SSPxDR;
}


/* Receive multiple byte */
static
void rcvr_spi_multi (
  BYTE *buff,   /* Pointer to data buffer */
  UINT btr    /* Number of bytes to receive (16, 64 or 512) */
)
{
  UINT n = 512;
  WORD d;


  SSPxCR0 = 0x000F;       /* Select 16-bit mode */

  for (n = 0; n < 8; n++)     /* Push 8 frames into pipeline  */
    SSPxDR = 0xFFFF;
  btr -= 16;
  while (btr) {         /* Receive the data block into buffer */
    while (!(SSPxSR & _BV(2))) ;
    d = SSPxDR;
    SSPxDR = 0xFFFF;
    *buff++ = d >> 8;
    *buff++ = d;
    btr -= 2;
  }
  for (n = 0; n < 8; n++) {   /* Pop remaining frames from pipeline */
    while (!(SSPxSR & _BV(2))) ;
    d = SSPxDR;
    *buff++ = d >> 8;
    *buff++ = d;
  }

  SSPxCR0 = 0x0007;       /* Select 8-bit mode */
}


/* Send multiple byte */
static
void xmit_spi_multi (
  const BYTE *buff, /* Pointer to the data */
  UINT btx      /* Number of bytes to send (512) */
)
{
  UINT n = 512;
  WORD d;


  SSPxCR0 = 0x000F;     /* Select 16-bit mode */

  for (n = 0; n < 8; n++) { /* Push 8 frames into pipeline  */
    d = *buff++;
    d = (d << 8) | *buff++;
    SSPxDR = d;
  }
  btx -= 16;
  do {            /* Transmit data block */
    d = *buff++;
    d = (d << 8) | *buff++;
    while (!(SSPxSR & _BV(2))) ;
    SSPxDR; SSPxDR = d;
  } while (btx -= 2);
  for (n = 0; n < 8; n++) {
    while (!(SSPxSR & _BV(2))) ;
    SSPxDR;
  }

  SSPxCR0 = 0x0007;     /* Select 8-bit mode */
}



/*-----------------------------------------------------------------------*/
/* Wait for card ready                                                   */
/*-----------------------------------------------------------------------*/

static
int wait_ready (  /* 1:Ready, 0:Timeout */
  UINT wt     /* Timeout [ms] */
)
{
  BYTE d;


  Timer2 = wt;
  do {
    d = xchg_spi(0xFF);
    /* This loop takes a time. Insert rot_rdq() here for multitask envilonment. */
  } while (d != 0xFF && Timer2);  /* Wait for card goes ready or timeout */

  return (d == 0xFF) ? 1 : 0;
}



/*-----------------------------------------------------------------------*/
/* Deselect card and release SPI                                         */
/*-----------------------------------------------------------------------*/

static
void deselect (void)
{
  CS_HIGH();    /* CS = H */
  xchg_spi(0xFF); /* Dummy clock (force DO hi-z for multiple slave SPI) */

}



/*-----------------------------------------------------------------------*/
/* Select card and wait for ready                                        */
/*-----------------------------------------------------------------------*/

static
int select (void) /* 1:OK, 0:Timeout */
{
  CS_LOW();
  xchg_spi(0xFF); /* Dummy clock (force DO enabled) */

  if (wait_ready(500)) return 1;  /* OK */
  deselect();
  return 0; /* Timeout */
}



/*-----------------------------------------------------------------------*/
/* Control SPI module (Platform dependent)                               */
/*-----------------------------------------------------------------------*/

static
void power_on (void)  /* Enable SSP module and attach it to I/O pads */
{
  MDR_RST_CLK->PER_CLOCK |= 1 << 20 | 1 << 24;    /* Enable SSP, PD module clock */
    MDR_RST_CLK->SSP_CLOCK = 2 << RST_CLK_SSP_CLOCK_SSP2_BRG_Pos | 1 << RST_CLK_SSP_CLOCK_SSP2_CLK_EN_Pos;
                                        /* Select frequency for SSP */

  SSPxCR0 = 0x0007;     /* Set mode: SPI mode 0, 8-bit */
  SSPxCR1 = 0x2;        /* Enable SSP with Master */

  // Attach SCK1, MISO1, MOSI1 and CS# to I/O pad
    MDR_PORTD->ANALOG &= 0xFF93;
    MDR_PORTD->ANALOG |= 0x006C;
    MDR_PORTD->FUNC   &= 0xFFFFC30F;
    MDR_PORTD->FUNC   |= 0x00002820;
    MDR_PORTD->PWR    |= 0x00003CF0;

    MDR_PORTD->OE |= _BV(6)|_BV(5)|_BV(3);  /* Set SCK1, MOSI1 and CS# as output */

  CS_HIGH();          /* Set CS# high */
}


static
void power_off (void)   /* Disable SPI function */
{
  select();       /* Wait for card ready */
  deselect();
}



/*-----------------------------------------------------------------------*/
/* Receive a data packet from the MMC                                    */
/*-----------------------------------------------------------------------*/

static
int rcvr_datablock (  /* 1:OK, 0:Error */
  BYTE *buff,     /* Data buffer */
  UINT btr      /* Data block length (byte) */
)
{
  BYTE token;


  Timer1 = 200;
  do {              /* Wait for DataStart token in timeout of 200ms */
    token = xchg_spi(0xFF);
    /* This loop will take a time. Insert rot_rdq() here for multitask envilonment. */
  } while ((token == 0xFF) && Timer1);
  if(token != 0xFE) return 0;   /* Function fails if invalid DataStart token or timeout */

  rcvr_spi_multi(buff, btr);    /* Store trailing data to the buffer */
  xchg_spi(0xFF); xchg_spi(0xFF);     /* Discard CRC */

  return 1;           /* Function succeeded */
}



/*-----------------------------------------------------------------------*/
/* Send a data packet to the MMC                                         */
/*-----------------------------------------------------------------------*/

static
int xmit_datablock (  /* 1:OK, 0:Failed */
  const BYTE *buff, /* Ponter to 512 byte data to be sent */
  BYTE token      /* Token */
)
{
  BYTE resp;


  if (!wait_ready(500)) return 0;   /* Wait for card ready */

  xchg_spi(token);          /* Send token */
  if (token != 0xFD) {        /* Send data if token is other than StopTran */
    xmit_spi_multi(buff, 512);    /* Data */
    xchg_spi(0xFF); xchg_spi(0xFF); /* Dummy CRC */

    resp = xchg_spi(0xFF);        /* Receive data resp */
    if ((resp & 0x1F) != 0x05)    /* Function fails if the data packet was not accepted */
      return 0;
  }
  return 1;
}



/*-----------------------------------------------------------------------*/
/* Send a command packet to the MMC                                      */
/*-----------------------------------------------------------------------*/

static
BYTE send_cmd (   /* Return value: R1 resp (bit7==1:Failed to send) */
  BYTE cmd,   /* Command index */
  DWORD arg   /* Argument */
)
{
  BYTE n, res;


  if (cmd & 0x80) { /* Send a CMD55 prior to ACMD<n> */
    cmd &= 0x7F;
    res = send_cmd(CMD55, 0);
    if (res > 1) return res;
  }

  /* Select card */
  deselect();
  if (!select()) return 0xFF;

  /* Send command packet */
  xchg_spi(0x40 | cmd);       /* Start + command index */
  xchg_spi((BYTE)(arg >> 24));    /* Argument[31..24] */
  xchg_spi((BYTE)(arg >> 16));    /* Argument[23..16] */
  xchg_spi((BYTE)(arg >> 8));     /* Argument[15..8] */
  xchg_spi((BYTE)arg);        /* Argument[7..0] */
  n = 0x01;             /* Dummy CRC + Stop */
  if (cmd == CMD0) n = 0x95;      /* Valid CRC for CMD0(0) */
  if (cmd == CMD8) n = 0x87;      /* Valid CRC for CMD8(0x1AA) */
  xchg_spi(n);

  /* Receive command resp */
  if (cmd == CMD12) xchg_spi(0xFF); /* Diacard following one byte when CMD12 */
  n = 10;               /* Wait for response (10 bytes max) */
  do
    res = xchg_spi(0xFF);
  while ((res & 0x80) && --n);

  return res;             /* Return received response */
}



/*--------------------------------------------------------------------------

   Public Functions

---------------------------------------------------------------------------*/


/*-----------------------------------------------------------------------*/
/* Initialize disk drive                                                 */
/*-----------------------------------------------------------------------*/

DSTATUS disk_initialize (
  BYTE drv    /* Physical drive number (0) */
)
{
  BYTE n, cmd, ty, ocr[4];


  if (drv) return STA_NOINIT;     /* Supports only drive 0 */
  if (Stat & STA_NODISK) return Stat; /* Is card existing in the soket? */

  power_on();             /* Initialize SPI */
  FCLK_SLOW();
  for (n = 10; n; n--) xchg_spi(0xFF);  /* Send 80 dummy clocks */

  ty = 0;
  if (send_cmd(CMD0, 0) == 1) {     /* Put the card SPI/Idle state */
    Timer1 = 1000;            /* Initialization timeout = 1 sec */
    if (send_cmd(CMD8, 0x1AA) == 1) { /* SDv2? */
      for (n = 0; n < 4; n++) ocr[n] = xchg_spi(0xFF);  /* Get 32 bit return value of R7 resp */
      if (ocr[2] == 0x01 && ocr[3] == 0xAA) {       /* Is the card supports vcc of 2.7-3.6V? */
//                send_cmd(CMD0, 0);
//                send_cmd(CMD8, 0x1AA);
//        while (Timer1 && send_cmd(ACMD41, 0)) ; /* Wait for end of initialization with ACMD41(HCS) */
        while (Timer1 && send_cmd(ACMD41, 1UL << 30)) ; /* Wait for end of initialization with ACMD41(HCS) */
        if (Timer1 && send_cmd(CMD58, 0) == 0) {    /* Check CCS bit in the OCR */
          for (n = 0; n < 4; n++) ocr[n] = xchg_spi(0xFF);
          ty = (ocr[0] & 0x40) ? CT_SD2 | CT_BLOCK : CT_SD2;  /* Card id SDv2 */
        }
      }
    } else {  /* Not SDv2 card */
      if (send_cmd(ACMD41, 0) <= 1)   { /* SDv1 or MMC? */
        ty = CT_SD1; cmd = ACMD41;  /* SDv1 (ACMD41(0)) */
      } else {
        ty = CT_MMC; cmd = CMD1;  /* MMCv3 (CMD1(0)) */
      }
      while (Timer1 && send_cmd(cmd, 0)) ;    /* Wait for end of initialization */
      if (!Timer1 || send_cmd(CMD16, 512) != 0) /* Set block length: 512 */
        ty = 0;
    }
  }
  CardType = ty;  /* Card type */
  deselect();

  if (ty) {     /* OK */
    FCLK_FAST();      /* Set fast clock */
    Stat &= ~STA_NOINIT;  /* Clear STA_NOINIT flag */
  } else {      /* Failed */
    power_off();
    Stat = STA_NOINIT;
  }

  return Stat;
}



/*-----------------------------------------------------------------------*/
/* Get disk status                                                       */
/*-----------------------------------------------------------------------*/

DSTATUS disk_status (
  BYTE drv    /* Physical drive number (0) */
)
{
  if (drv) return STA_NOINIT;   /* Supports only drive 0 */

  return Stat;  /* Return disk status */
}



/*-----------------------------------------------------------------------*/
/* Read sector(s)                                                        */
/*-----------------------------------------------------------------------*/

DRESULT disk_read (
  BYTE drv,   /* Physical drive number (0) */
  BYTE *buff,   /* Pointer to the data buffer to store read data */
  DWORD sector, /* Start sector number (LBA) */
  BYTE count    /* Number of sectors to read (1..128) */
)
{
  if (drv || !count) return RES_PARERR;   /* Check parameter */
  if (Stat & STA_NOINIT) return RES_NOTRDY; /* Check if drive is ready */

  if (!(CardType & CT_BLOCK)) sector *= 512;  /* LBA ot BA conversion (byte addressing cards) */

  if (count == 1) { /* Single sector read */
    if ((send_cmd(CMD17, sector) == 0)  /* READ_SINGLE_BLOCK */
      && rcvr_datablock(buff, 512))
      count = 0;
  }
  else {        /* Multiple sector read */
    if (send_cmd(CMD18, sector) == 0) { /* READ_MULTIPLE_BLOCK */
      do {
        if (!rcvr_datablock(buff, 512)) break;
        buff += 512;
      } while (--count);
      send_cmd(CMD12, 0);       /* STOP_TRANSMISSION */
    }
  }
  deselect();

  return count ? RES_ERROR : RES_OK;  /* Return result */
}



/*-----------------------------------------------------------------------*/
/* Write sector(s)                                                       */
/*-----------------------------------------------------------------------*/

DRESULT disk_write (
  BYTE drv,     /* Physical drive number (0) */
  const BYTE *buff, /* Ponter to the data to write */
  DWORD sector,   /* Start sector number (LBA) */
  BYTE count      /* Number of sectors to write (1..128) */
)
{
  if (drv || !count) return RES_PARERR;   /* Check parameter */
  if (Stat & STA_NOINIT) return RES_NOTRDY; /* Check drive status */
  if (Stat & STA_PROTECT) return RES_WRPRT; /* Check write protect */

  if (!(CardType & CT_BLOCK)) sector *= 512;  /* LBA ==> BA conversion (byte addressing cards) */

  if (count == 1) { /* Single sector write */
    if ((send_cmd(CMD24, sector) == 0)  /* WRITE_BLOCK */
      && xmit_datablock(buff, 0xFE))
      count = 0;
  }
  else {        /* Multiple sector write */
    if (CardType & CT_SDC) send_cmd(ACMD23, count); /* Predefine number of sectors */
    if (send_cmd(CMD25, sector) == 0) { /* WRITE_MULTIPLE_BLOCK */
      do {
        if (!xmit_datablock(buff, 0xFC)) break;
        buff += 512;
      } while (--count);
      if (!xmit_datablock(0, 0xFD)) /* STOP_TRAN token */
        count = 1;
    }
  }
  deselect();

  return count ? RES_ERROR : RES_OK;  /* Return result */
}



/*-----------------------------------------------------------------------*/
/* Miscellaneous drive controls other than data read/write               */
/*-----------------------------------------------------------------------*/

DRESULT disk_ioctl (
  BYTE drv,   /* Physical drive number (0) */
  BYTE ctrl,    /* Control command code */
  void *buff    /* Pointer to the conrtol data */
)
{
  DRESULT res;
  BYTE n, csd[16], *ptr = buff;
  WORD csize;
  DWORD *dp, st, ed;


  if (drv) return RES_PARERR;         /* Check parameter */
  if (Stat & STA_NOINIT) return RES_NOTRDY; /* Check if drive is ready */

  res = RES_ERROR;

  switch (ctrl) {
  case CTRL_SYNC :    /* Wait for end of internal write process of the drive */
    if (select()) {
      deselect();
      res = RES_OK;
    }
    break;

  case GET_SECTOR_COUNT : /* Get drive capacity in unit of sector (DWORD) */
    if ((send_cmd(CMD9, 0) == 0) && rcvr_datablock(csd, 16)) {
      if ((csd[0] >> 6) == 1) { /* SDC ver 2.00 */
        csize = csd[9] + ((WORD)csd[8] << 8) + 1;
        *(DWORD*)buff = (DWORD)csize << 10;
      } else {          /* SDC ver 1.XX or MMC ver 3 */
        n = (csd[5] & 15) + ((csd[10] & 128) >> 7) + ((csd[9] & 3) << 1) + 2;
        csize = (csd[8] >> 6) + ((WORD)csd[7] << 2) + ((WORD)(csd[6] & 3) << 10) + 1;
        *(DWORD*)buff = (DWORD)csize << (n - 9);
      }
      res = RES_OK;
    }
    break;

  case GET_SECTOR_SIZE :  /* Get sector size in unit of byte (WORD) */
    *(WORD*)buff = 512;
    res = RES_OK;
    break;

  case GET_BLOCK_SIZE : /* Get erase block size in unit of sector (DWORD) */
    if (CardType & CT_SD2) {  /* SDC ver 2.00 */
      if (send_cmd(ACMD13, 0) == 0) { /* Read SD status */
        xchg_spi(0xFF);
        if (rcvr_datablock(csd, 16)) {        /* Read partial block */
          for (n = 64 - 16; n; n--) xchg_spi(0xFF); /* Purge trailing data */
          *(DWORD*)buff = 16UL << (csd[10] >> 4);
          res = RES_OK;
        }
      }
    } else {          /* SDC ver 1.XX or MMC */
      if ((send_cmd(CMD9, 0) == 0) && rcvr_datablock(csd, 16)) {  /* Read CSD */
        if (CardType & CT_SD1) {  /* SDC ver 1.XX */
          *(DWORD*)buff = (((csd[10] & 63) << 1) + ((WORD)(csd[11] & 128) >> 7) + 1) << ((csd[13] >> 6) - 1);
        } else {          /* MMC */
          *(DWORD*)buff = ((WORD)((csd[10] & 124) >> 2) + 1) * (((csd[11] & 3) << 3) + ((csd[11] & 224) >> 5) + 1);
        }
        res = RES_OK;
      }
    }
    break;

  case CTRL_ERASE_SECTOR :  /* Erase a block of sectors (used when _USE_ERASE == 1) */
    if (!(CardType & CT_SDC)) break;        /* Check if the card is SDC */
    if (disk_ioctl(drv, MMC_GET_CSD, csd)) break; /* Get CSD */
    if (!(csd[0] >> 6) && !(csd[10] & 0x40)) break; /* Check if sector erase can be applied to the card */
    dp = buff; st = dp[0]; ed = dp[1];        /* Load sector block */
    if (!(CardType & CT_BLOCK)) {
      st *= 512; ed *= 512;
    }
    if (send_cmd(CMD32, st) == 0 && send_cmd(CMD33, ed) == 0 && send_cmd(CMD38, 0) == 0 && wait_ready(30000)) /* Erase sector block */
      res = RES_OK; /* FatFs does not check result of this command */
    break;

  /* Following command are not used by FatFs module */

  case MMC_GET_TYPE :   /* Get MMC/SDC type (BYTE) */
    *ptr = CardType;
    res = RES_OK;
    break;

  case MMC_GET_CSD :    /* Read CSD (16 bytes) */
    if (send_cmd(CMD9, 0) == 0    /* READ_CSD */
      && rcvr_datablock(ptr, 16))
      res = RES_OK;
    break;

  case MMC_GET_CID :    /* Read CID (16 bytes) */
    if (send_cmd(CMD10, 0) == 0   /* READ_CID */
      && rcvr_datablock(ptr, 16))
      res = RES_OK;
    break;

  case MMC_GET_OCR :    /* Read OCR (4 bytes) */
    if (send_cmd(CMD58, 0) == 0) {  /* READ_OCR */
      for (n = 4; n; n--) *ptr++ = xchg_spi(0xFF);
      res = RES_OK;
    }
    break;

  case MMC_GET_SDSTAT : /* Read SD status (64 bytes) */
    if (send_cmd(ACMD13, 0) == 0) { /* SD_STATUS */
      xchg_spi(0xFF);
      if (rcvr_datablock(ptr, 64))
        res = RES_OK;
    }
    break;

  default:
    res = RES_PARERR;
  }

  deselect();

  return res;
}


/*-----------------------------------------------------------------------*/
/* Device timer function  (Platform dependent)                           */
/*-----------------------------------------------------------------------*/
/* This function must be called from timer interrupt routine in period
/  of 1 ms to generate card control timing.
*/

void disk_timerproc (void)
{
  WORD n;
  BYTE s;


  n = Timer1;           /* 1kHz decrement timer stopped at 0 */
  if (n) Timer1 = --n;
  n = Timer2;
  if (n) Timer2 = --n;

  s = Stat;
  if (WP)   /* Write protected */
    s |= STA_PROTECT;
  else    /* Write enabled */
    s &= ~STA_PROTECT;
  if (INS)  /* Card is in socket */
    s &= ~STA_NODISK;
  else    /* Socket empty */
    s |= (STA_NODISK | STA_NOINIT);
  Stat = s;
}

