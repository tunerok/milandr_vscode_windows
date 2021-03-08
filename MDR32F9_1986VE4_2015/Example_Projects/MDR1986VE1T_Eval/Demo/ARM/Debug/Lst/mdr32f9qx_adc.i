#line 1 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"




















 

 
#line 1 "..\\..\\Config\\MDR32F9Qx_config.h"

















 





















 

 



#line 1 "..\\..\\Config\\MDR32F9Qx_board.h"

















 

 




 




 

 

 

 

 

 



 

 

 







 

#line 47 "..\\..\\Config\\MDR32F9Qx_config.h"
#line 1 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_lib.h"





















 

 







#line 59 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_lib.h"



 










 
#line 48 "..\\..\\Config\\MDR32F9Qx_config.h"
#line 1 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"
 
 





 







 




  
 







#line 37 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"







 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     
typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;

     
typedef   signed       __int64 intmax_t;
typedef unsigned       __int64 uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     


     


     


     

     


     


     


     

     



     



     


     
    
 



#line 208 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"

     







     










     











#line 272 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"



 



#line 49 "..\\..\\Config\\MDR32F9Qx_config.h"

#line 56 "..\\..\\Config\\MDR32F9Qx_config.h"


 
#line 1 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"





















 
 





 



 



 






  #pragma anon_unions




 

typedef enum IRQn
{
 
  NonMaskableInt_IRQn         = -14,     
  HardFault_IRQn              = -13,     
  SVCall_IRQn                 = -5,      
  PendSV_IRQn                 = -2,      
  SysTick_IRQn                = -1,      

 
  MIL_STD_1553B2_IRQn         = 0,       
  MIL_STD_1553B1_IRQn         = 1,       
  USB_IRQn                    = 2,       
  CAN1_IRQn					  = 3,		 
  CAN2_IRQn					  = 4,		 
  DMA_IRQn                    = 5,       
  UART1_IRQn                  = 6,       
  UART2_IRQn                  = 7,       
  SSP1_IRQn                   = 8,       
  BUSY_IRQn					  = 9,		 
  ARINC429R_IRQn              = 10,      
  POWER_IRQn                  = 11,      
  WWDG_IRQn                   = 12,      
  TIMER4_IRQn				  = 13,		 
  TIMER1_IRQn                 = 14,      
  TIMER2_IRQn                 = 15,      
  TIMER3_IRQn                 = 16,      
  ADC_IRQn                    = 17,      
  ETHERNET_IRQn        	      = 18,      
  SSP3_IRQn			          = 19,      
  SSP2_IRQn                   = 20,      
  ARINC429T1_IRQn			  = 21,		 
  ARINC429T2_IRQn			  = 22,		 
  ARINC429T3_IRQn			  = 23,		 
  ARINC429T4_IRQn			  = 24,		 
  BKP_IRQn		              = 27,      
  EXT_INT1_IRQn               = 28,      
  EXT_INT2_IRQn               = 29,      
  EXT_INT3_IRQn               = 30,      
  EXT_INT4_IRQn               = 31       
}IRQn_Type;



 
 





   

 
#line 1 "..\\..\\Config\\MDR32F9Qx_config.h"

















 





















 

 
#line 227 "..\\..\\Config\\MDR32F9Qx_config.h"



 
#line 106 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"
#line 1 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cm1.h"
 







 

























 
























 




 


 

 













#line 103 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cm1.h"


 







#line 128 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cm1.h"

#line 130 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cm1.h"
#line 1 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cmInstr.h"
 







 

























 






 



 


 









 







 







 






 








 







 







 









 









 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 

__attribute__((section(".revsh_text"))) static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}










 










 



#line 292 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cmInstr.h"



#line 685 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cmInstr.h"

   

#line 131 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cm1.h"
#line 1 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cmFunc.h"
 







 

























 






 



 


 





 
 






 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}







 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}







 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}







 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}







 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}







 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}







 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}







 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}







 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}







 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}







 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}


#line 271 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cmFunc.h"


#line 307 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cmFunc.h"


#line 632 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cmFunc.h"

 


#line 132 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cm1.h"








 
#line 157 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cm1.h"

 






 
#line 173 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cm1.h"

 










 


 





 


 
typedef union
{
  struct
  {

    uint32_t _reserved0:27;               





    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       

    uint32_t _reserved0:15;               





    uint32_t T:1;                         
    uint32_t IT:2;                        
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 


 
typedef struct
{
  volatile uint32_t ISER[1];                  
       uint32_t RESERVED0[31];
  volatile uint32_t ICER[1];                  
       uint32_t RSERVED1[31];
  volatile uint32_t ISPR[1];                  
       uint32_t RESERVED2[31];
  volatile uint32_t ICPR[1];                  
       uint32_t RESERVED3[31];
       uint32_t RESERVED4[64];
  volatile uint32_t IP[8];                    
}  NVIC_Type;

 






 


 
typedef struct
{
  volatile const  uint32_t CPUID;                    
  volatile uint32_t ICSR;                     
       uint32_t RESERVED0;
  volatile uint32_t AIRCR;                    
  volatile uint32_t SCR;                      
  volatile uint32_t CCR;                      
       uint32_t RESERVED1;
  volatile uint32_t SHP[2];                   
  volatile uint32_t SHCSR;                    
} SCB_Type;

 















 



























 















 









 






 



 






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t LOAD;                     
  volatile uint32_t VAL;                      
  volatile const  uint32_t CALIB;                    
} SysTick_Type;

 












 



 



 









 








 
 






 

 










 









 

 



 




 

 
 










 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}







 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}











 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));
}







 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}







 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[0] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}










 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] = (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) |
        (((priority << (8 - 2)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 )); }
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( ((uint32_t)(IRQn) >> 2) )] = (((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( ((uint32_t)(IRQn) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) |
        (((priority << (8 - 2)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 )); }
}












 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) & 0xFF) >> (8 - 2)));  }  
  else {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[ ( ((uint32_t)(IRQn) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) & 0xFF) >> (8 - 2)));  }  
}





 
static __inline void NVIC_SystemReset(void)
{
  __dsb(0xF);                                                     
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FA << 16)      |
                 (1UL << 2));
  __dsb(0xF);                                                      
  while(1);                                                     
}

 



 




 

















 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1) > (0xFFFFFFUL << 0))  return (1);       

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = ticks - 1;                                   
  NVIC_SetPriority (SysTick_IRQn, (1<<2) - 1);   
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0;                                           
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2) |
                   (1UL << 1)   |
                   (1UL << 0);                     
  return (0);                                                   
}



 








#line 107 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"
#line 1 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\startup\\arm\\system_MDR1986VE1T.h"




















 



 



 



 

 





 

extern uint32_t SystemCoreClock;          
 

   



 

extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);

   



   

   

   



 
#line 108 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"



 
typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus, BitStatus;



typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;


typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;

   



 



 

 
typedef struct
{
  volatile uint32_t ID;
  volatile uint32_t DLC;
  volatile uint32_t DATAL;
  volatile uint32_t DATAH;
}MDR_CAN_BUF_TypeDef;

 
typedef struct
{
  volatile uint32_t MASK;
  volatile uint32_t FILTER;
}MDR_CAN_BUF_FILTER_TypeDef;

 
typedef struct
{
  volatile uint32_t CONTROL;
  volatile uint32_t STATUS;
  volatile uint32_t BITTMNG;
       uint32_t RESERVED0;
  volatile uint32_t INT_EN;
       uint32_t RESERVED1[2];
  volatile uint32_t OVER;
  volatile uint32_t RXID;
  volatile uint32_t RXDLC;
  volatile uint32_t RXDATAL;
  volatile uint32_t RXDATAH;
  volatile uint32_t TXID;
  volatile uint32_t TXDLC;
  volatile uint32_t DATAL;
  volatile uint32_t DATAH;
  volatile uint32_t BUF_CON[32];
  volatile uint32_t INT_RX;
  volatile uint32_t RX;
  volatile uint32_t INT_TX;
  volatile uint32_t TX;
       uint32_t RESERVED2[76];
    MDR_CAN_BUF_TypeDef CAN_BUF[32];
       uint32_t RESERVED3[64];
    MDR_CAN_BUF_FILTER_TypeDef CAN_BUF_FILTER[32];
}MDR_CAN_TypeDef;

   



 



  

 
 






 






   



  

 
 
#line 223 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 239 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 254 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 262 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 






 






   



  

 
 
 
 



 



   



  

 
 
 
 
#line 317 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 325 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
 
 





 





   



  

 
 
 
 





 





   



  

 
 
#line 384 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 394 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   

   

   



 



 

 
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t STS;
  volatile uint32_t TS;
  volatile uint32_t NTS;
}MDR_USB_SEP_TypeDef;

 
typedef struct
{
  volatile uint32_t RXFD;
       uint32_t RESERVED0;
  volatile uint32_t RXFDC_L;
  volatile uint32_t RXFDC_H;
  volatile uint32_t RXFC;
       uint32_t RESERVED1[11];
  volatile uint32_t TXFD;
       uint32_t RESERVED2[3];
  volatile uint32_t TXFDC;
       uint32_t RESERVED3[11];
}MDR_USB_SEP_FIFO_TypeDef;

 
typedef struct
{
  volatile uint32_t HTXC;
  volatile uint32_t HTXT;
  volatile uint32_t HTXLC;
  volatile uint32_t HTXSE;
  volatile uint32_t HTXA;
  volatile uint32_t HTXE;
  volatile uint32_t HFN_L;
  volatile uint32_t HFN_H;
  volatile uint32_t HIS;
  volatile uint32_t HIM;
  volatile uint32_t HRXS;
  volatile uint32_t HRXP;
  volatile uint32_t HRXA;
  volatile uint32_t HRXE;
  volatile uint32_t HRXCS;
  volatile uint32_t HSTM;
       uint32_t RESERVED0[16];
  volatile uint32_t HRXFD;
       uint32_t RESERVED1;
  volatile uint32_t HRXFDC_L;
  volatile uint32_t HRXFDC_H;
  volatile uint32_t HRXFC;
       uint32_t RESERVED2[11];
  volatile uint32_t HTXFD;
       uint32_t RESERVED3[3];
  volatile uint32_t HTXFC;
       uint32_t RESERVED4[11];
    MDR_USB_SEP_TypeDef USB_SEP[4];
  volatile uint32_t SC;
  volatile uint32_t SLS;
  volatile uint32_t SIS;
  volatile uint32_t SIM;
  volatile uint32_t SA;
  volatile uint32_t SFN_L;
  volatile uint32_t SFN_H;
       uint32_t RESERVED5[9];
    MDR_USB_SEP_FIFO_TypeDef USB_SEP_FIFO[4];
  volatile uint32_t HSCR;
  volatile uint32_t HSVR;
}MDR_USB_TypeDef;

   



 



  

 
 





 





   



  

 
 





 





   



  

 
 





 





   



  

 
 





 





   



  

 
 
#line 573 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 583 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 






 






   



  

 
 
#line 621 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 631 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 






 






   



  

 
 






 






   



  

 
 






 






   



  

 
 
#line 711 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 721 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 



 



   

   

   




 



 

 
typedef struct
{
  volatile uint32_t CMD;
  volatile uint32_t ADR;
  volatile uint32_t DI;
  volatile uint32_t DO;
  volatile uint32_t KEY;
}MDR_EEPROM_TypeDef;

   



 



  

 
 
#line 786 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 800 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   

   

   



 



 

 
typedef struct {
  volatile uint32_t CLOCK_STATUS;
  volatile uint32_t PLL_CONTROL;
  volatile uint32_t HS_CONTROL;
  volatile uint32_t CPU_CLOCK;
  volatile uint32_t USB_CLOCK;
  volatile uint32_t ADC_MCO_CLOCK;
  volatile uint32_t RTC_CLOCK;
  volatile uint32_t PER_CLOCK;
  volatile uint32_t CAN_CLOCK;
  volatile uint32_t TIM_CLOCK;
  volatile uint32_t UART_CLOCK;
  volatile uint32_t SSP_CLOCK;
       uint32_t RESERVED;
  volatile uint32_t ETH_CLOCK;
} MDR_RST_CLK_TypeDef;

   



 



  

 
 





 





   




  

 
 
#line 871 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 879 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   




  

 
 





 





   



 

 
 





 





   




  

 
 





 





   




  

 
 





 





   




  

 
 





 





   




  

 
 





 





   




  

 
 
#line 1014 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1022 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   




  

 
 
#line 1038 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1046 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   




  

 
 
#line 1062 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1070 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   





  

 
 
#line 1090 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1101 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   

   

   




 



 

 
typedef struct
{
  volatile uint32_t STATUS;
  volatile uint32_t CFG;
  volatile uint32_t CTRL_BASE_PTR;
  volatile uint32_t ALT_CTRL_BASE_PTR;
  volatile uint32_t WAITONREQ_STATUS;
  volatile uint32_t CHNL_SW_REQUEST;
  volatile uint32_t CHNL_USEBURST_SET;
  volatile uint32_t CHNL_USEBURST_CLR;
  volatile uint32_t CHNL_REQ_MASK_SET;
  volatile uint32_t CHNL_REQ_MASK_CLR;
  volatile uint32_t CHNL_ENABLE_SET;
  volatile uint32_t CHNL_ENABLE_CLR;
  volatile uint32_t CHNL_PRI_ALT_SET;
  volatile uint32_t CHNL_PRI_ALT_CLR;
  volatile uint32_t CHNL_PRIORITY_SET;
  volatile uint32_t CHNL_PRIORITY_CLR;
       uint32_t RESERVED0[3];
  volatile uint32_t ERR_CLR;
}MDR_DMA_TypeDef;

   



 



  

 
 





 





   



  

 
 



 



   

   

   




 



 



 

typedef struct {
  volatile uint32_t DR;
  volatile uint32_t RSR_ECR;
       uint32_t RESERVED0[4];
  volatile uint32_t FR;
       uint32_t RESERVED1;
  volatile uint32_t ILPR;
  volatile uint32_t IBRD;
  volatile uint32_t FBRD;
  volatile uint32_t LCR_H;
  volatile uint32_t CR;
  volatile uint32_t IFLS;
  volatile uint32_t IMSC;
  volatile uint32_t RIS;
  volatile uint32_t MIS;
  volatile uint32_t ICR;
  volatile uint32_t DMACR;
  volatile uint32_t UARTTCR;
} MDR_UART_TypeDef;

   

   



 



  

 
 






 






   



  

 
 





 





   



  

 
 
#line 1280 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1291 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 1307 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1316 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 1337 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1351 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 



 



   



  

 
 
#line 1386 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1399 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   




  

 
 
#line 1420 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1433 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 1453 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1466 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 1486 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1499 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 




 




   



  

 
 




 




   

   

   




 



 



 

 
typedef struct
{
  volatile uint32_t CR0;
  volatile uint32_t CR1;
  volatile uint32_t DR;
  volatile uint32_t SR;
  volatile uint32_t CPSR;
  volatile uint32_t IMSC;
  volatile uint32_t RIS;
  volatile uint32_t MIS;
  volatile uint32_t ICR;
  volatile uint32_t DMACR;
}MDR_SSP_TypeDef;


   

   



 



  

 
 






 






   


   



 



  

 
 





 





   



   



 



  

 
 






 






   



   



 



  

 
 





 





   


   



 



  

 
 





 





   


   



 



  

 
 





 





   


   



 



 

 
 



 



   

   



 



  

 
 



 



   



  

 
 



 



   


   

   



 



 

 
typedef struct {
	uint32_t RESERVED0[1024];
	volatile uint32_t CONTROL;
	volatile uint32_t STATUS;
	volatile uint32_t ERROR;
	volatile uint32_t CommandWord1;
	volatile uint32_t CommandWord2;
	volatile uint32_t ModeData;
	volatile uint32_t StatusWord1;
	volatile uint32_t StatusWord2;
	volatile uint32_t INTEN;
	volatile uint32_t MSG;
} MDR_MIL_STD_1553_TypeDef;

   



 


  

 
 
#line 1841 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1855 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   




  

 
 
#line 1871 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1879 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 1895 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1904 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 





 





   

   

   




 



 

 
typedef struct
{
  volatile uint32_t PVDCS;
}MDR_POWER_TypeDef;

   



 



  

 
 
#line 1966 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1977 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   

   

   



 



 

 
typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFR;
  volatile uint32_t SR;
}MDR_WWDG_TypeDef;

   



 



  

 
 



 



   



  

 
 




 




   

   

   



 



 

 
typedef struct
{
  volatile uint32_t KR;
  volatile uint32_t PR;
  volatile uint32_t RLR;
  volatile uint32_t SR;
}MDR_IWDG_TypeDef;

   



 



  

 
 



 



   

   

   




 



 



 

typedef struct {
  volatile uint32_t CNT;
  volatile uint32_t PSG;
  volatile uint32_t ARR;
  volatile uint32_t CNTRL;
  volatile uint32_t CCR1;
  volatile uint32_t CCR2;
  volatile uint32_t CCR3;
  volatile uint32_t CCR4;
  volatile uint32_t CH1_CNTRL;
  volatile uint32_t CH2_CNTRL;
  volatile uint32_t CH3_CNTRL;
  volatile uint32_t CH4_CNTRL;
  volatile uint32_t CH1_CNTRL1;
  volatile uint32_t CH2_CNTRL1;
  volatile uint32_t CH3_CNTRL1;
  volatile uint32_t CH4_CNTRL1;
  volatile uint32_t CH1_DTG;
  volatile uint32_t CH2_DTG;
  volatile uint32_t CH3_DTG;
  volatile uint32_t CH4_DTG;
  volatile uint32_t BRKETR_CNTRL;
  volatile uint32_t STATUS;
  volatile uint32_t IE;
  volatile uint32_t DMA_RE;
  volatile uint32_t CH1_CNTRL2;
  volatile uint32_t CH2_CNTRL2;
  volatile uint32_t CH3_CNTRL2;
  volatile uint32_t CH4_CNTRL2;
  volatile uint32_t CCR11;
  volatile uint32_t CCR21;
  volatile uint32_t CCR31;
  volatile uint32_t CCR41;
  volatile uint32_t DMA_REChx[4];
} MDR_TIMER_TypeDef;


   

   



 



  

 
 
#line 2155 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2164 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 2182 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2193 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



 

 
 
#line 2208 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2216 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 




 




   



  

 
 





 





   



  

 
 
#line 2269 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2279 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 2296 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2306 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 2323 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2333 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 




 




   

   

   



 



 



 

typedef struct {
  volatile uint32_t ADC1_CFG;		
  volatile uint32_t ADC2_CFG;		
  volatile uint32_t ADC1_H_LEVEL;	
  volatile uint32_t RESERVED0;   	
  volatile uint32_t ADC1_L_LEVEL;	
  volatile uint32_t RESERVED1;		
  volatile uint32_t ADC1_RESULT;	
  volatile uint32_t RESERVED2;		
  volatile uint32_t ADC1_STATUS;	
  volatile uint32_t RESERVED3;   	
  volatile uint32_t ADC1_CHSEL;		
  volatile uint32_t RESERVED4;		
  volatile uint32_t ADC1_TRIM;		
} MDR_ADC_TypeDef;

   

   



 



  

 
 
#line 2416 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2435 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   




  

 
 


 


   




  

 






   




  

 
 






 






   



  

 
 



 



   

   

   



 



 



 

typedef struct {
  volatile uint32_t CFG;
  volatile uint32_t DAC1_DATA;
  volatile uint32_t DAC2_DATA;
} MDR_DAC_TypeDef;

   

   



 



  

 
 






 






   


   



 



  

 
 



 



   



   



 



  

 
 



 



   



   

   



 



 



 

typedef struct {
  volatile uint32_t RXTX;
  volatile uint32_t OE;
  volatile uint32_t FUNC;
  volatile uint32_t ANALOG;
  volatile uint32_t PULL;
  volatile uint32_t PD;
  volatile uint32_t PWR;
  volatile uint32_t GFEN;
  volatile uint32_t SETTX;
  volatile uint32_t CLRTX;
  volatile uint32_t RDTX;
} MDR_PORT_TypeDef;


   

   



 



  

 
 
#line 2662 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2680 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 



 



   



  

 
 



 



   



  

 
 
#line 2735 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2753 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   

   

   



 



 

 
typedef struct
{
	volatile uint32_t CONTROL1;
	volatile uint32_t CONTROL2;
	volatile uint32_t CONTROL3;
	volatile uint32_t STATUS1;
	volatile uint32_t STATUS2;
	volatile uint32_t CONTROL4;
	volatile uint32_t CONTROL5;
	volatile uint32_t CHANNEL;
	volatile uint32_t LABEL;
	volatile uint32_t DATA_R;
		 uint32_t RESERVED1[2];
	volatile uint32_t DATA_R_Direct[8];
		 uint32_t RESERVED2[6];
	volatile uint32_t INTMASK;
}MDR_ARINC429R_TypeDef;

   



 



  

 
 
#line 2816 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2834 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 2861 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2881 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 2910 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2932 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 





 





   



  

 
 





 





   



  

 
 
#line 3011 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3045 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3070 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3088 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3113 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3131 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   

   

   



 



 

 
typedef struct
{
	volatile uint32_t CONTROL1;
	volatile uint32_t CONTROL2;
	volatile uint32_t STATUS;
	volatile uint32_t DATA1_T;
	volatile uint32_t DATA2_T;
	volatile uint32_t DATA3_T;
	volatile uint32_t DATA4_T;
	volatile uint32_t CONTROL3;
}MDR_ARINC429T_TypeDef;

   



 



  

 
 
#line 3186 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3203 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3226 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3242 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 





 





   



  

 
 
#line 3282 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3296 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   

   

   



 



 

 
typedef struct
{
  volatile uint32_t REG_00;
  volatile uint32_t REG_01;
  volatile uint32_t REG_02;
  volatile uint32_t REG_03;
  volatile uint32_t REG_04;
  volatile uint32_t REG_05;
  volatile uint32_t REG_06;
  volatile uint32_t REG_07;
  volatile uint32_t REG_08;
  volatile uint32_t REG_09;
  volatile uint32_t REG_0A;
  volatile uint32_t REG_0B;
  volatile uint32_t REG_0C;
  volatile uint32_t REG_0D;
  volatile uint32_t REG_0E;
  volatile uint32_t REG_0F;
  volatile uint32_t RTC_CNT;
  volatile uint32_t RTC_DIV;
  volatile uint32_t RTC_PRL;
  volatile uint32_t RTC_ALRM;
  volatile uint32_t RTC_CS;
}MDR_BKP_TypeDef;

   



 



  

 
 
#line 3356 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3365 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3389 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3406 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3422 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3431 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   

   

   



 



 

 
typedef struct
{
       uint32_t RESERVED0[20];
  volatile uint32_t NAND_CYCLES;
  volatile uint32_t CONTROL;
  volatile uint32_t MEM_REGION[4];
}MDR_EBC_TypeDef;

   



 



  

 
 
#line 3474 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3483 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   




  

 
 
#line 3501 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3511 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   




  

 
 






 






   

   

   



 



 

typedef struct {
  volatile uint16_t ETH_Dilimiter;		
  volatile uint16_t ETH_MAC_T;			
  volatile uint16_t ETH_MAC_M;			
  volatile uint16_t ETH_MAC_H;			
  volatile uint16_t ETH_HASH0;			
  volatile uint16_t ETH_HASH1;			
  volatile uint16_t ETH_HASH2;			
  volatile uint16_t ETH_HASH3;			
  volatile uint16_t ETH_IPG;			
  volatile uint16_t ETH_PSC;			
  volatile uint16_t ETH_BAG;			
  volatile uint16_t ETH_JitterWnd;		
  volatile uint16_t ETH_R_CFG;			
  volatile uint16_t ETH_X_CFG;			
  volatile uint16_t ETH_G_CFGl;			
  volatile uint16_t ETH_G_CFGh;			
  volatile uint16_t ETH_IMR;			
  volatile uint16_t ETH_IFR;			
  volatile uint16_t ETH_MDIO_CTRL;		
  volatile uint16_t ETH_MDIO_DATA;		
  volatile uint16_t ETH_R_Head;			
  volatile uint16_t ETH_X_Tail;			
  volatile uint16_t ETH_R_Tail;			
  volatile uint16_t ETH_X_Head;			
  volatile uint16_t ETH_STAT;			
  volatile uint16_t Reserved;			
  volatile uint16_t PHY_Control;		
  volatile uint16_t PHY_Status;			
} MDR_ETHERNET_TypeDef;

   



 



  

 
 
#line 3598 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3607 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3622 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3630 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3648 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3659 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3680 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3694 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3718 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3735 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3759 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3776 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3796 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3809 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3824 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3832 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3848 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3857 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3876 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3888 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   

   

   






 

#line 3936 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



 

#line 3977 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   

   

   

   





 
#line 63 "..\\..\\Config\\MDR32F9Qx_config.h"





 





 
 






 
#line 90 "..\\..\\Config\\MDR32F9Qx_config.h"


 




#line 116 "..\\..\\Config\\MDR32F9Qx_config.h"










 



 
 


 


 
            


 

 


 
 
 
 


 


 
 
 
 
 

 
 

 



 



 


 
 


 







 

 
 








 
#line 211 "..\\..\\Config\\MDR32F9Qx_config.h"

#line 225 "..\\..\\Config\\MDR32F9Qx_config.h"





 
#line 25 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"
#line 1 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"





















 

 







 
#line 34 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"
#line 35 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"



 



 



 



 

typedef struct {





	uint32_t ADC_StartDelay; 			
 

	uint32_t ADC_TempSensor; 			
 

	uint32_t ADC_TempSensorAmplifier; 	

 

	uint32_t ADC_TempSensorConversion; 	
 

	uint32_t ADC_IntVRefConversion; 	
 

	uint32_t ADC_IntVRefTrimming; 		
 

	uint32_t ADC_IntVRefAmplifier;		
 


} ADC_InitTypeDef;



 

typedef struct
{
  uint32_t ADC_ClockSource;             
 

  uint32_t ADC_SamplingMode;            
 

  uint32_t ADC_ChannelSwitching;        
 

  uint32_t ADC_ChannelNumber;           
 

  uint32_t ADC_Channels;                
 

  uint32_t ADC_LevelControl;            
 

  uint16_t ADC_LowLevel;                
 

  uint16_t ADC_HighLevel;                
 

  uint32_t ADC_VRefSource;              
 

  uint32_t ADC_IntVRefSource;           
 

  uint32_t ADC_Prescaler;               
 

  uint32_t ADC_DelayGo;                 
 
}ADCx_InitTypeDef;

   



 

#line 147 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"



 



   



 







   



 







   



 







   



 







   



 







   



 







   



 







   



 







   




 

#line 275 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"

#line 292 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"





   



 

#line 321 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"

#line 338 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"











   



 









   



 







   



 







   



 

#line 409 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"

#line 426 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"

   



 



   



 









#line 455 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"

#line 464 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"







   



 












#line 494 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"






   





 






   




   



 

   



 

void ADC_DeInit(void);

void ADC_Init(const ADC_InitTypeDef* ADC_InitStruct);
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct);

void ADC_SetTrim(uint32_t Trim);

void ADC1_Init(const ADCx_InitTypeDef* ADCx_InitStruct);
void ADC2_Init(const ADCx_InitTypeDef* ADCx_InitStruct);
void ADCx_StructInit(ADCx_InitTypeDef* ADCx_InitStruct);

void ADC1_Cmd(FunctionalState NewState);
void ADC2_Cmd(FunctionalState NewState);

void ADC1_SetChannel(uint32_t Channel);
void ADC2_SetChannel(uint32_t Channel);
void ADC1_SetChannels(uint32_t ChannelMask);
void ADC2_SetChannels(uint32_t ChannelMask);

void ADC1_OperationModeConfig(uint32_t SamplingMode, uint32_t SwitchingMode);
void ADC2_OperationModeConfig(uint32_t SamplingMode, uint32_t SwitchingMode);
void ADC1_SamplingModeConfig(uint32_t SamplingMode);
void ADC2_SamplingModeConfig(uint32_t SamplingMode);
void ADC1_ChannelSwithingConfig(uint32_t SwitchingMode);
void ADC2_ChannelSwithingConfig(uint32_t SwitchingMode);

void ADC1_LevelsConfig(uint32_t LowLevel, uint32_t HighLevel, uint32_t NewState);
void ADC2_LevelsConfig(uint32_t LowLevel, uint32_t HighLevel, uint32_t NewState);
void ADC1_SetLowLevel(uint32_t LowLevel);
void ADC2_SetLowLevel(uint32_t LowLevel);
void ADC1_SetHighLevel(uint32_t HighLevel);
void ADC2_SetHighLevel(uint32_t HighLevel);

void ADC1_Start(void);
void ADC2_Start(void);

uint32_t ADC1_GetResult(void);
uint32_t ADC2_GetResult(void);

uint32_t ADC_GetStatus(void);
uint32_t ADC1_GetStatus(void);
uint32_t ADC2_GetStatus(void);
FlagStatus ADC_GetFlagStatus(uint32_t Flag);
FlagStatus ADC1_GetFlagStatus(uint32_t Flag);
FlagStatus ADC2_GetFlagStatus(uint32_t Flag);
void ADC1_ClearOverwriteFlag(void);
void ADC2_ClearOverwriteFlag(void);
void ADC1_ClearOutOfRangeFlag(void);
void ADC2_ClearOutOfRangeFlag(void);

void ADC_ITConfig(uint32_t ADC_IT, FunctionalState NewState);
void ADC1_ITConfig(uint32_t ADC_IT, FunctionalState NewState);
void ADC2_ITConfig(uint32_t ADC_IT, FunctionalState NewState);
ITStatus ADC_GetITStatus(uint32_t ADC_IT);
ITStatus ADC1_GetITStatus(uint32_t ADC_IT);
ITStatus ADC2_GetITStatus(uint32_t ADC_IT);

   

   

   









 

#line 26 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"





 



 



 





 
void ADC_DeInit ( void )
{
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CFG = 0;
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC2_CFG = 0;
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_H_LEVEL = 0;
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_L_LEVEL = 0;
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_RESULT;
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_STATUS = 0;
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CHSEL = 0;

#line 63 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"


  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_TRIM = 0;

}








 
void ADC_Init(const ADC_InitTypeDef* ADC_InitStruct)
{
  uint32_t tmpreg_CFG;
  uint32_t tmpreg_MSK;

  uint32_t tmpreg_TRIM;


   



  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

  ((void)0);


  tmpreg_CFG = (ADC_InitStruct->ADC_StartDelay << 28)
             + ADC_InitStruct->ADC_TempSensor
             + ADC_InitStruct->ADC_TempSensorAmplifier
             + ADC_InitStruct->ADC_TempSensorConversion
             + ADC_InitStruct->ADC_IntVRefConversion;






  tmpreg_MSK = ((uint32_t)0xF0000000)
             | ((uint32_t)0x00020000)
             | ((uint32_t)0x00040000)
             | ((uint32_t)0x00080000)
             | ((uint32_t)0x00100000);




  tmpreg_TRIM = (ADC_InitStruct->ADC_IntVRefTrimming << 1)
          | ADC_InitStruct->ADC_IntVRefAmplifier;
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_TRIM  = tmpreg_TRIM;


  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CFG = (((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CFG & ~tmpreg_MSK) + tmpreg_CFG;
}






 
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct)
{





  ADC_InitStruct->ADC_StartDelay        	= 0;
  ADC_InitStruct->ADC_TempSensor        	= (((uint32_t)0x0) << 17);
  ADC_InitStruct->ADC_TempSensorAmplifier   = (((uint32_t)0x0) << 18);
  ADC_InitStruct->ADC_TempSensorConversion  = (((uint32_t)0x0) << 19);
  ADC_InitStruct->ADC_IntVRefConversion     = (((uint32_t)0x0) << 20);
  ADC_InitStruct->ADC_IntVRefTrimming     	= 0;


  ADC_InitStruct->ADC_IntVRefAmplifier    	= ((uint32_t)(0 << 6));

}






 
void ADC_SetTrim(uint32_t Trim)
{
  uint32_t tmpreg;

   
  ((void)0);






  tmpreg = ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_TRIM;
  tmpreg &= ~((uint32_t)0x0000003E);
  tmpreg |= Trim << 1;
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_TRIM = tmpreg;

}









 
void ADC1_Init(const ADCx_InitTypeDef* ADCx_InitStruct)
{
  uint32_t tmpreg_CFG1;
  uint32_t tmpreg_CFG2;

   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CFG1 = ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CFG;

  tmpreg_CFG1 &= ~(((uint32_t)0x00000004)
                 | ((uint32_t)0x00000008)
                 | ((uint32_t)0x00000200)
                 | ((uint32_t)0x000001F0)
                 | ((uint32_t)0x00000400)
                 | ((uint32_t)0x00000800)
                 | ((uint32_t)0x0000F000)
                 | ((uint32_t)0x0E000000));

  tmpreg_CFG1 += ADCx_InitStruct->ADC_ClockSource
               + ADCx_InitStruct->ADC_SamplingMode
               + ADCx_InitStruct->ADC_ChannelSwitching
               + (ADCx_InitStruct->ADC_ChannelNumber << 4)
               + ADCx_InitStruct->ADC_LevelControl
               + ADCx_InitStruct->ADC_VRefSource
               + ADCx_InitStruct->ADC_Prescaler
               + (ADCx_InitStruct->ADC_DelayGo << 25);

  tmpreg_CFG2 = ((MDR_ADC_TypeDef *)(0x40088000) )->ADC2_CFG;
  tmpreg_CFG2 &= ~((uint32_t)0x00020000);
  tmpreg_CFG2 += ADCx_InitStruct->ADC_IntVRefSource << 17;

  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CFG = tmpreg_CFG1;
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC2_CFG = tmpreg_CFG2;

  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_L_LEVEL = ADCx_InitStruct->ADC_LowLevel;
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_H_LEVEL = ADCx_InitStruct->ADC_HighLevel;
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CHSEL   = ADCx_InitStruct->ADC_Channels;
}

#line 295 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"






 
void ADCx_StructInit(ADCx_InitTypeDef* ADCx_InitStruct)
{
  ADCx_InitStruct->ADC_ClockSource      = (((uint32_t)0x0) << 2);
  ADCx_InitStruct->ADC_SamplingMode     = (((uint32_t)0x0) << 3);
  ADCx_InitStruct->ADC_ChannelSwitching = (((uint32_t)0x0) << 9);
  ADCx_InitStruct->ADC_ChannelNumber    = ((uint32_t)0x00);
  ADCx_InitStruct->ADC_Channels         = 0;
  ADCx_InitStruct->ADC_LevelControl     = (((uint32_t)0x0) << 10);
  ADCx_InitStruct->ADC_LowLevel         = 0;
  ADCx_InitStruct->ADC_HighLevel        = 0;
  ADCx_InitStruct->ADC_VRefSource       = (((uint32_t)0x0) << 11);
  ADCx_InitStruct->ADC_IntVRefSource    = ((uint32_t)0x0);
  ADCx_InitStruct->ADC_Prescaler        = (((uint32_t)0x0) << 12);
  ADCx_InitStruct->ADC_DelayGo          = 0;
}






 
void ADC1_Cmd(FunctionalState NewState)
{
  uint32_t tmpreg_CFG;

   
  ((void)0);

  tmpreg_CFG = ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CFG;

   
  if (NewState != DISABLE)
  {
     
    tmpreg_CFG |= ((uint32_t)0x00000001);
  }
  else
  {
     
    tmpreg_CFG &= ~((uint32_t)0x00000001);
  }

   
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CFG = tmpreg_CFG;
}

#line 383 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"





 
void ADC1_SetChannel(uint32_t Channel)
{
  uint32_t tmpreg_CFG;

   
  ((void)0);

  tmpreg_CFG = ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CFG;
  tmpreg_CFG &= ~((uint32_t)0x000001F0);
  tmpreg_CFG += Channel << 4;
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CFG = tmpreg_CFG;
}

#line 423 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"





 
void ADC1_SetChannels(uint32_t ChannelMask)
{
   
  ((void)0);

  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CHSEL = ChannelMask;
}

#line 451 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"






 
void ADC1_OperationModeConfig(uint32_t SamplingMode, uint32_t SwitchingMode)
{
  uint32_t tmpreg_CFG;

   
  ((void)0);
  ((void)0);

  tmpreg_CFG = ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CFG;
  tmpreg_CFG &= ~(((uint32_t)0x00000008) | ((uint32_t)0x00000200));
  tmpreg_CFG += SamplingMode + SwitchingMode;
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CFG = tmpreg_CFG;
}

#line 495 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"





 
void ADC1_SamplingModeConfig(uint32_t SamplingMode)
{
  uint32_t tmpreg_CFG;

   
  ((void)0);

  tmpreg_CFG = ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CFG;
  tmpreg_CFG &= ~((uint32_t)0x00000008);
  tmpreg_CFG += SamplingMode;
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CFG = tmpreg_CFG;
}

#line 535 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"





 
void ADC1_ChannelSwithingConfig(uint32_t SwitchingMode)
{
  uint32_t tmpreg_CFG;

   
  ((void)0);

  tmpreg_CFG = ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CFG;
  tmpreg_CFG &= ~((uint32_t)0x00000200);
  tmpreg_CFG += SwitchingMode;
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CFG = tmpreg_CFG;
}

#line 575 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"







 
void ADC1_LevelsConfig(uint32_t LowLevel, uint32_t HighLevel, uint32_t NewState)
{
  uint32_t tmpreg_CFG;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CFG = ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CFG;
  tmpreg_CFG &= ~((uint32_t)0x00000400);
  tmpreg_CFG += NewState;
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CFG = tmpreg_CFG;

  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_L_LEVEL = LowLevel;
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_H_LEVEL = HighLevel;
}

#line 629 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"





 
void ADC1_SetLowLevel(uint32_t LowLevel)
{
   
  ((void)0);

  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_L_LEVEL = LowLevel;
}

#line 657 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"





 
void ADC1_SetHighLevel(uint32_t HighLevel)
{
   
  ((void)0);

  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_H_LEVEL = HighLevel;
}

#line 687 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"





 
void ADC1_Start(void)
{
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_CFG |= ((uint32_t)0x00000002);
}

#line 711 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"





 
uint32_t ADC1_GetResult(void)
{
  return ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_RESULT;
}

#line 735 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"





 
uint32_t ADC_GetStatus ( void )
{



  return ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_STATUS;

}





 
uint32_t ADC1_GetStatus(void)
{
  return ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_STATUS;
}

#line 773 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"












 
FlagStatus ADC_GetFlagStatus(uint32_t Flag)
{
  FlagStatus bitstatus;

   
  ((void)0);

  if ((ADC_GetStatus() & Flag) == 0)
  {
    bitstatus = RESET;
  }
  else
  {
    bitstatus = SET;
  }

  return bitstatus;
}









 
FlagStatus ADC1_GetFlagStatus(uint32_t Flag)
{
  FlagStatus bitstatus;

   
  ((void)0);

  if ((((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_STATUS & Flag) == 0)
  {
    bitstatus = RESET;
  }
  else
  {
    bitstatus = SET;
  }

  return bitstatus;
}

#line 864 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"





 
void ADC1_ClearOverwriteFlag(void)
{
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_STATUS &= ~(((uint32_t)0x1) << 0);
}

#line 888 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"





 
void ADC1_ClearOutOfRangeFlag(void)
{
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_STATUS &= ~(((uint32_t)0x1) << 1);
}

#line 912 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"












 
void ADC_ITConfig(uint32_t ADC_IT, FunctionalState NewState)
{
  uint32_t tmpreg_ADC1_IE;
  uint32_t tmpreg_ADC_IT;




   
  ((void)0);
  ((void)0);

  tmpreg_ADC1_IE = ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_STATUS;
  tmpreg_ADC_IT = ADC_IT << 2;

   
  if (NewState != DISABLE)
  {
     
    tmpreg_ADC1_IE |= tmpreg_ADC_IT & 0xFFFF;
  }
  else
  {
     
    tmpreg_ADC1_IE &= ~(tmpreg_ADC_IT & 0xFFFF);
  }

   
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_STATUS = tmpreg_ADC1_IE;

#line 973 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"
}










 
void ADC1_ITConfig(uint32_t ADC_IT, FunctionalState NewState)
{
  uint32_t tmpreg_ADC1_IE;

   
  ((void)0);
  ((void)0);

  tmpreg_ADC1_IE = ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_STATUS;

   
  if (NewState != DISABLE)
  {
     
    tmpreg_ADC1_IE |= (ADC_IT << 2);
  }
  else
  {
     
    tmpreg_ADC1_IE &= ~(ADC_IT << 2);
  }

   
  ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_STATUS = tmpreg_ADC1_IE;
}

#line 1050 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"










 
ITStatus ADC_GetITStatus(uint32_t ADC_IT)
{
  ITStatus bitstatus;
  uint32_t tmpreg;

   
  ((void)0);

  tmpreg = ADC_GetStatus();
  tmpreg &= (tmpreg >> 2) & ADC_IT;

  if (tmpreg == 0)
  {
    bitstatus = RESET;
  }
  else
  {
    bitstatus = SET;
  }

  return bitstatus;
}








 
ITStatus ADC1_GetITStatus(uint32_t ADC_IT)
{
  ITStatus bitstatus;
  uint32_t tmpreg;

   
  ((void)0);

  tmpreg = ((MDR_ADC_TypeDef *)(0x40088000) )->ADC1_STATUS;
  tmpreg &= (tmpreg >> 2) & ADC_IT;

  if (tmpreg == 0)
  {
    bitstatus = RESET;
  }
  else
  {
    bitstatus = SET;
  }

  return bitstatus;
}

#line 1149 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_adc.c"

   

   

   



 

