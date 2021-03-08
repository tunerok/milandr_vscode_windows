/**
  ******************************************************************************
  * @file    MDR32F9Qx_it.h
  * @author  Phyton Application Team
  * @version V3.0.0
  * @date    08.09.2011
  * @brief   This file contains all the prototypes of interrupt handler functions
  ******************************************************************************
  * <br><br>
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, PHYTON SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 Phyton</center></h2>
  */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MDR32F9Qx_H
#define __MDR32F9Qx_H

/* Includes ------------------------------------------------------------------*/
#include <MDR32Fx.h>
#include "types.h"
#include "MDR32Fx.h"
#include "MDR32F9Qx_adc.h"
#include "MDR32F9Qx_dac.h"


void NMI_Handler(void);
void HardFault_Handler(void);
void MemManage_Handler(void);
void BusFault_Handler(void);
void UsageFault_Handler(void);
void SVC_Handler(void);
void DebugMon_Handler(void);
void PendSV_Handler(void);
void SysTick_Handler(void);
void CAN1_IRQHandler(void);
void CAN2_IRQHandler(void);
void USB_IRQHandler(void);
void DMA_IRQHandler(void);
void UART1_IRQHandler(void);
void UART2_IRQHandler(void);
void SSP1_IRQHandler(void);
void I2C_IRQHandler(void);
void POWER_IRQHandler(void);
void WWDG_IRQHandler(void);
void Timer1_IRQHandler(void);
void Timer2_IRQHandler(void);
void Timer3_IRQHandler(void);
void ADC_IRQHandler(void);
void COMPARATOR_IRQHandler(void);
void SSP2_IRQHandler(void);
void BACKUP_IRQHandler(void);
void EXT_INT1_IRQHandler(void);
void EXT_INT2_IRQHandler(void);
void EXT_INT3_IRQHandler(void);
void EXT_INT4_IRQHandler(void);

/** @addtogroup __MDR32F9Qx_Eval_Demo MDR32F9Qx Demonstration Example
  * @{
  */

/** @defgroup Interrupt_Service_Routines Interrupt Service Routines
  * @{
  */

/** @defgroup Interrupt_Service_Exported_Types Interrupt Service Exported Types
  * @{
  */

typedef void (* tUARTFunc)(void);
typedef void (* tUARTLineStateFunc)(uint32_t);

/** @} */ /* End of group Interrupt_Service_Exported_Types */

/** @defgroup Interrupt_Service_Exported_Macros Interrupt Service Exported Macros
  * @{
  */

/* UART event mask as of interest by CDC PSTN line state notifications */
#define UART_LINE_STATE_EVENTS		(UART_IT_OE | UART_IT_BE | UART_IT_PE | UART_IT_FE | \
																	 UART_IT_DSR | UART_IT_DCD | UART_IT_RI)

/** @} */ /* End of group Interrupt_Service_Exported_Macros */


/** @defgroup Interrupt_Service_Exported_Variables Interrupt Service Exported Variables
  * @{
  */

/* Timer counter */
extern vuint32_t TimerCounter;

/* Current value of the ADC1_RESULT register */
extern vuint32_t ADC1_Value;

/* Pointers to UART send/receive interrupt handlers */
extern tUARTFunc pfUARTSenderFunc;
extern tUARTFunc pfUARTReceiverFunc;
extern tUARTLineStateFunc pfUARTLineStateFunc;

/* Stop mode flag */
extern vuint32_t STOPModeStatus;

/* Alarm flag */
extern vuint32_t AlarmSetStatus;

/** @} */ /* End of group Interrupt_Service_Exported_Variables */

/** @} */ /* End of group Interrupt_Service_Routines */

/** @} */ /* End of group __MDR32F9Qx_Eval_Demo */

#endif /* __MDR32F9Qx_H */

/******************* (C) COPYRIGHT 2011 Phyton *********************************
*
* END OF FILE MDR32F9Qx_it.h */

