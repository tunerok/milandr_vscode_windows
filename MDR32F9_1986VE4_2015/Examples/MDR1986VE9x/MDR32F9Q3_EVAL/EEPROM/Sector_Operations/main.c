/**
  ******************************************************************************
  * @file    Examples/MDR32F9Q3_EVAL/EEPROM/Sector_Operations/main.c
  * @author  Milandr Application Team
  * @version V1.2.0
  * @date    16/06/2010
  * @brief   Main program body.
  ******************************************************************************
  * <br><br>
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, MILANDR SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 Milandr</center></h2>
  */

/* Includes ------------------------------------------------------------------*/
#include "MDR32Fx.h"
#include "MDR32F9Qx_eeprom.h"
#include "MDR32F9Qx_port.h"
#include "MDR32F9Qx_rst_clk.h"

/** @addtogroup __MDR32F9Qx_StdPeriph_Examples MDR32F9Qx StdPeriph Examples
  * @{
  */

/** @addtogroup __MDR32F9Q3_EVAL MDR32F9Q3 Evaluation Board
  * @{
  */

/** @addtogroup EEPROM_Sector_Operations EEPROM_Sector_Operations
  * @{
  */

/* Private typedef -----------------------------------------------------------*/

/* Private define ------------------------------------------------------------*/
#define EEPROM_PAGE_SIZE             (4*1024)
#define MAIN_EEPAGE                  5
#define LED_MASK                     (PORT_Pin_0 | PORT_Pin_1)
#define LED0_MASK                    PORT_Pin_0

/* Private macro -------------------------------------------------------------*/
#define LED_TST_NUM(num)             ((LED0_MASK << ((num) & 1)) & LED_MASK)

/* Private variables ---------------------------------------------------------*/
static PORT_InitTypeDef PORT_InitStructure;

/* Private function prototypes -----------------------------------------------*/

/* Private functions ---------------------------------------------------------*/
uint32_t Pseudo_Rand(uint32_t addr)
{
  uint32_t hash = 0;
  uint32_t i = 0;
  uint8_t* key = (uint8_t *)&addr;

  for (i = 0; i < 4; i++)
  {
    hash += key[i];
    hash += (hash << 10);
    hash ^= (hash >> 6);
  }

  for (i = 0; i < 256; i++)
  {
    hash += (hash << 10);
    hash ^= (hash >> 6);
  }

  hash += (hash << 3);
  hash ^= (hash >> 11);
  hash += (hash << 15);
  return hash;
}

void Delay(void)
{
  volatile uint32_t i = 0;
  for (i = 0; i < 100000; i++)
  {
  }
}

int32_t main (void)
{
  uint32_t Address = 0;
  uint32_t BankSelector = 0;
  uint32_t Data = 0;
  uint32_t i = 0;
  uint32_t Leds = 0;
  uint8_t EraseErrMM = 0;
  uint8_t WriteErrMM = 0;
  uint8_t EraseErrIM = 0;
  uint8_t WriteErrIM = 0;

  /* Enables the clock on PORTF */
  RST_CLK_PCLKcmd(RST_CLK_PCLK_PORTF, ENABLE);
  /* Enables the clock on EEPROM */
  RST_CLK_PCLKcmd(RST_CLK_PCLK_EEPROM, ENABLE);

  /* Configure PORTF pins 0..1 for output to switch LEDs on/off */
  PORT_InitStructure.PORT_Pin   = LED_MASK;
  PORT_InitStructure.PORT_OE    = PORT_OE_OUT;
  PORT_InitStructure.PORT_FUNC  = PORT_FUNC_PORT;
  PORT_InitStructure.PORT_MODE  = PORT_MODE_DIGITAL;
  PORT_InitStructure.PORT_SPEED = PORT_SPEED_SLOW;

  PORT_Init(MDR_PORTF, &PORT_InitStructure);

  /* Erase main memory page MAIN_EEPAGE */
  Address = 0x08000000 + MAIN_EEPAGE * EEPROM_PAGE_SIZE;
  BankSelector = EEPROM_Main_Bank_Select;
  EEPROM_ErasePage (Address, BankSelector);

  /* Check main memory page MAIN_EEPAGE */
  Data = 0xFFFFFFFF;
  for (i = 0; i < EEPROM_PAGE_SIZE; i += 4)
  {
    if (EEPROM_ReadWord (Address + i, BankSelector) != Data)
    {
      EraseErrMM = 1;
    }
  }

  /* Indicate status of erasing main memory page MAIN_EEPAGE */
  if (EraseErrMM == 0)
  {
    PORT_Write(MDR_PORTF, LED_TST_NUM(0x0));
  }
  else
  {
    while (1)
    {
      Leds ^= LED_MASK;
      PORT_Write(MDR_PORTF, Leds);
      Delay();
    }
  }

  /* Fill main memory page MAIN_EEPAGE */
  Address = 0x08000000 + MAIN_EEPAGE * EEPROM_PAGE_SIZE;
  BankSelector = EEPROM_Main_Bank_Select;
  for (i = 0; i < EEPROM_PAGE_SIZE; i += 4)
  {
    Data = Pseudo_Rand (Address + i);
    EEPROM_ProgramWord (Address + i, BankSelector, Data);
  }

  /* Check main memory page MAIN_EEPAGE */
  Address = 0x08000000 + MAIN_EEPAGE * EEPROM_PAGE_SIZE;
  BankSelector = EEPROM_Main_Bank_Select;
  for (i = 0; i < EEPROM_PAGE_SIZE; i +=4 )
  {
    Data = Pseudo_Rand (Address + i);
    if (EEPROM_ReadWord (Address + i, BankSelector) != Data)
    {
      WriteErrMM = 1;
    }
  }

  /* Indicate status of writing main memory page MAIN_EEPAGE */
  if (WriteErrMM == 0)
  {
    PORT_Write(MDR_PORTF, LED_TST_NUM(0x1));
  }
  else
  {
    while (1)
    {
      Leds ^= LED_MASK;
      PORT_Write(MDR_PORTF, Leds);
      Delay();
    }
  }

  /* Erase main memory page MAIN_EEPAGE */
  Address = 0x08000000 + MAIN_EEPAGE * EEPROM_PAGE_SIZE;
  BankSelector = EEPROM_Main_Bank_Select;
  EEPROM_ErasePage (Address, BankSelector);

  /* Check main memory page MAIN_EEPAGE */
  Data = 0xFFFFFFFF;
  for (i = 0; i < EEPROM_PAGE_SIZE; i += 4)
  {
    if (EEPROM_ReadWord (Address + i, BankSelector) != Data)
    {
      EraseErrMM = 1;
    }
  }

  /* Indicate status of erasing main memory page MAIN_EEPAGE */
  if (EraseErrMM == 0)
  {
    PORT_Write(MDR_PORTF, LED_TST_NUM(0x2));
  }
  else
  {
    while (1)
    {
      Leds ^= LED_MASK;
      PORT_Write(MDR_PORTF, Leds);
      Delay();
    }
  }

  /* Full Erase information memory */
  Address = 0x08000000;
  BankSelector = EEPROM_Info_Bank_Select;
  EEPROM_ErasePage (Address, BankSelector);

  /* Check information memory */
  Data = 0xFFFFFFFF;
  for (i = 0; i < EEPROM_PAGE_SIZE; i += 4)
  {
    if (EEPROM_ReadWord (Address + i, BankSelector) != Data)
    {
      EraseErrIM = 1;
    }
  }

  /* Indicate status of erasing information memory */
  if (EraseErrIM == 0)
  {
    PORT_Write(MDR_PORTF, LED_TST_NUM(0x3));
  }
  else
  {
    while (1)
    {
      Leds ^= LED_MASK;
      PORT_Write(MDR_PORTF, Leds);
      Delay();
    }
  }

  /* fill information memory */
  Address = 0x08000000;
  BankSelector = EEPROM_Info_Bank_Select;
  for (i = 0; i < EEPROM_PAGE_SIZE; i += 4)
  {
    Data = Pseudo_Rand (Address + i);
    EEPROM_ProgramWord (Address + i, BankSelector, Data);
  }

  /* Check information memory */
  Address = 0x08000000;
  BankSelector = EEPROM_Info_Bank_Select;
  for (i = 0; i < EEPROM_PAGE_SIZE; i += 4)
  {
    Data = Pseudo_Rand (Address + i);
    if (EEPROM_ReadWord (Address + i, BankSelector) != Data)
    {
      WriteErrIM = 1;
    }
  }

  /* Indicate status of writing information memory */
  if (WriteErrIM == 0)
  {
    PORT_Write(MDR_PORTF, LED_TST_NUM(0x4));
  }
  else
  {
    while (1)
    {
      Leds ^= LED_MASK;
      PORT_Write(MDR_PORTF, Leds);
      Delay();
    }
  }

  /* Full Erase information memory */
  Address = 0x08000000;
  BankSelector = EEPROM_Info_Bank_Select;
  EEPROM_ErasePage (Address, BankSelector);

  /* Check information memory */
  Data = 0xFFFFFFFF;
  for (i = 0; i < EEPROM_PAGE_SIZE; i += 4)
  {
    if (EEPROM_ReadWord (Address + i, BankSelector) != Data)
    {
      EraseErrIM = 1;
    }
  }

  if (WriteErrIM == 0)
  {
    PORT_Write(MDR_PORTF, LED_TST_NUM(0x5));
    Delay();
  }
  else
  {
    while (1)
    {
      Leds ^= LED_MASK;
      PORT_Write(MDR_PORTF, Leds);
      Delay();
    }
  }

  PORT_Write(MDR_PORTF, LED_MASK);
  while (1)
  {
  }
}

/**
  * @brief  Reports the source file ID, the source line number
  *         and expression text (if USE_ASSERT_INFO == 2) where
  *         the assert_param error has occurred.
  * @param  file_id: pointer to the source file name
  * @param  line: assert_param error line source number
  * @param  expr:
  * @retval None
  */
#if (USE_ASSERT_INFO == 1)
void assert_failed(uint32_t file_id, uint32_t line)
{
  /* User can add his own implementation to report the source file ID and line number.
     Ex: printf("Wrong parameters value: file Id %d on line %d\r\n", file_id, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#elif (USE_ASSERT_INFO == 2)
void assert_failed(uint32_t file_id, uint32_t line, const uint8_t* expr);
{
  /* User can add his own implementation to report the source file ID, line number and
     expression text.
     Ex: printf("Wrong parameters value (%s): file Id %d on line %d\r\n", expr, file_id, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif /* USE_ASSERT_INFO */

/** @} */ /* End of group EEPROM_Sector_Operations */

/** @} */ /* End of group __MDR32F9Q3_EVAL */

/** @} */ /* End of group __MDR32F9Qx_StdPeriph_Examples */

/******************* (C) COPYRIGHT 2011 Milandr *******************
*
* END OF FILE main.c */

