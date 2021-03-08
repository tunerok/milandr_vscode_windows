/**
  ******************************************************************************
  * @file    Examples/MDR1986BE4_EVAL/TIMER/5PWM_Output/main.c
  * @author  Milandr Application Team
  * @version V1.2.0
  * @date    04/07/2014
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
  * <h2><center>&copy; COPYRIGHT 2014 Milandr</center></h2>
  */

/* Includes ------------------------------------------------------------------*/
#include "MDR32F9Qx_config.h"

#include "MDR32F9Qx_timer.h"
#include "MDR32F9Qx_rst_clk.h"
#include "MDR32F9Qx_port.h"

/** @addtogroup __MDR32F9Qx_StdPeriph_Examples MDR32F9Qx StdPeriph Examples
  * @{
  */

/** @addtogroup __MDR1986BE4_EVAL MDR1986BE4 Evaluation Board
  * @{
  */

/** @addtogroup TIMER_5PWM_Output TIMER_5PWM_Output
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
TIMER_CntInitTypeDef sTIM_CntInit;
TIMER_ChnInitTypeDef sTIM_ChnInit;
TIMER_ChnOutInitTypeDef sTIM_ChnOutInit;
PORT_InitTypeDef PORT_InitStructure;

uint16_t CCR3_Val = 0x7FF;

/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program
  * @param  None
  * @retval None
  */
#ifdef __CC_ARM
int main(void)
#else
void main(void)
#endif
{
  RST_CLK_DeInit();
  RST_CLK_HSEconfig(RST_CLK_HSE_ON);

  if(RST_CLK_HSEstatus() == ERROR)
	  while(1);

  RST_CLK_CPU_PLLconfig (RST_CLK_CPU_PLLsrcHSEdiv1,0);
  RST_CLK_CPUclkSelection(RST_CLK_CPUclkCPU_C3);


  /* Enable peripheral clocks --------------------------------------------------*/
  RST_CLK_PCLKcmd((RST_CLK_PCLK_RST_CLK | RST_CLK_PCLK_TIMER1),ENABLE);
  RST_CLK_PCLKcmd((RST_CLK_PCLK_PORTA), ENABLE);

  /* Init NVIC */
  SCB->AIRCR = 0x05FA0000 | ((uint32_t)0x500);
  /* Disable all interrupt */
  NVIC->ICPR[0] = 0xFFFFFFFF;
  NVIC->ICER[0] = 0xFFFFFFFF;

  /* Reset PORTB settings */
  PORT_DeInit(MDR_PORTA);

  /* Configure TIMER1 pins: CH3N */
  /* Configure PORTA pins 5 */
  PORT_InitStructure.PORT_Pin   = (PORT_Pin_5);
  PORT_InitStructure.PORT_OE    = PORT_OE_OUT;
  PORT_InitStructure.PORT_FUNC  = PORT_FUNC_MAIN;
  PORT_InitStructure.PORT_MODE  = PORT_MODE_DIGITAL;
  PORT_InitStructure.PORT_SPEED = PORT_SPEED_FAST;
  PORT_Init(MDR_PORTA, &PORT_InitStructure);

  /* Reset all TIMER1 settings */
  TIMER_DeInit(MDR_TIMER1);

  /* TIM1 Configuration ---------------------------------------------------
   Generates 1 PWM signals:
   TIM1CLK = 8.192 MHz, Prescaler = 0, TIM1 counter clock = 8.192 MHz
   TIM1 frequency = TIM1CLK/(TIM1_Period + 1) = 2 KHz
  - TIM1 Channel3 duty cycle = TIM1->CCR3 / (TIM1_Period + 1) = 12.5%
  ----------------------------------------------------------------------- */

  /* Initializes the TIMERx Counter ------------------------------------*/
  sTIM_CntInit.TIMER_Prescaler                = 0x0;
  sTIM_CntInit.TIMER_Period                   = 0xFFF;
  sTIM_CntInit.TIMER_CounterMode              = TIMER_CntMode_ClkFixedDir;
  sTIM_CntInit.TIMER_CounterDirection         = TIMER_CntDir_Up;
  sTIM_CntInit.TIMER_EventSource              = TIMER_EvSrc_None;
  sTIM_CntInit.TIMER_FilterSampling           = TIMER_FDTS_TIMER_CLK_div_1;
  sTIM_CntInit.TIMER_ARR_UpdateMode           = TIMER_ARR_Update_Immediately;
  sTIM_CntInit.TIMER_ETR_FilterConf           = TIMER_Filter_1FF_at_TIMER_CLK;
  sTIM_CntInit.TIMER_ETR_Prescaler            = TIMER_ETR_Prescaler_None;
  sTIM_CntInit.TIMER_ETR_Polarity             = TIMER_ETRPolarity_NonInverted;
  sTIM_CntInit.TIMER_BRK_Polarity             = TIMER_BRKPolarity_NonInverted;
  TIMER_CntInit (MDR_TIMER1,&sTIM_CntInit);

  /* Initializes the TIMER1 Channel 1,1N,2,2N,3 -------------------------------------*/
  TIMER_ChnStructInit(&sTIM_ChnInit);

  sTIM_ChnInit.TIMER_CH_Mode                = TIMER_CH_MODE_PWM;
  sTIM_ChnInit.TIMER_CH_REF_Format          = TIMER_CH_REF_Format6;
  sTIM_ChnInit.TIMER_CH_Number              = TIMER_CHANNEL3;
  TIMER_ChnInit(MDR_TIMER1, &sTIM_ChnInit);

  TIMER_SetChnCompare(MDR_TIMER1, TIMER_CHANNEL3, CCR3_Val);

  /* Initializes the TIMER1 Channel 3 Output -------------------------------*/

  TIMER_ChnOutStructInit(&sTIM_ChnOutInit);

  sTIM_ChnOutInit.TIMER_CH_DirOut_Polarity          = TIMER_CHOPolarity_NonInverted;
  sTIM_ChnOutInit.TIMER_CH_DirOut_Source            = TIMER_CH_OutSrc_REF;
  sTIM_ChnOutInit.TIMER_CH_DirOut_Mode              = TIMER_CH_OutMode_Output;
  sTIM_ChnOutInit.TIMER_CH_NegOut_Polarity          = TIMER_CHOPolarity_NonInverted;
  sTIM_ChnOutInit.TIMER_CH_NegOut_Source            = TIMER_CH_OutSrc_REF;
  sTIM_ChnOutInit.TIMER_CH_NegOut_Mode              = TIMER_CH_OutMode_Output;
  sTIM_ChnOutInit.TIMER_CH_Number                   = TIMER_CHANNEL3;
  TIMER_ChnOutInit(MDR_TIMER1, &sTIM_ChnOutInit);

  /* Enable TIMER1 clock */
  TIMER_BRGInit(MDR_TIMER1,TIMER_HCLKdiv1);

  /* Enable TIMER1 */
  TIMER_Cmd(MDR_TIMER1,ENABLE);

  while(1)
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

/** @} */ /* End of group TIMER_5PWM_Output */

/** @} */ /* End of group __MDR1986BE4_EVAL */

/** @} */ /* End of group __MDR32F9Qx_StdPeriph_Examples */

/******************* (C) COPYRIGHT 2014 Milandr *********/

/* END OF FILE main.c */
