/**
  ******************************************************************************
  * @file	 TIMER_IT_handler.h
  * @author	 sidorov.a
  * @version {version}
  * @date    05.04.2013
  * @brief   This file contains the user defines and typedef and functions
  * 		 prototypes.
  ******************************************************************************
  ******************************************************************************
  * <br><br>
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, MILANDR SHALL NOT BE HELD LIABLE FOR ANY DIRECT, INDIRECT
  * OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2013 Milandr </center></h2>
  ******************************************************************************
  * FILE TIMER_IT_handler.h
  */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef TIMER_IT_HANDLER_H_
#define TIMER_IT_HANDLER_H_

/* Includes ------------------------------------------------------------------*/
#include "MDR32F9Qx_timer.h"
/* Private typedef -----------------------------------------------------------*/

/* Private define ------------------------------------------------------------*/

/* Private macro -------------------------------------------------------------*/

/* Private variables ---------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/
void My_TIMER1_IRQ_Handler(MDR_TIMER_TypeDef * TIMERx, MDR_MIL_STD_1553_TypeDef * MIL_STD_1553x);

#endif /* TIMER_IT_HANDLER_H_ */

/******************* (C) COPYRIGHT 2013 Milandr ********************************
*
* END OF FILE TIMER_IT_handler.h */
