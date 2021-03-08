///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:56 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_bkp.c                     /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_bkp.c --preprocess        /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\ -lCN          /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\ -lB           /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\ -o            /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\Debug\Obj\ --debug        /
//                    --endian=little --cpu=Cortex-M3 -e --fpu=None           /
//                    --dlib_config "C:\Program Files (x86)\IAR               /
//                    Systems\Embedded Workbench                              /
//                    6.4\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\..\..\config\ -I          /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\..\..\..\..\Libraries\MDR /
//                    32F9Qx_StdPeriph_Driver\inc\ -I                         /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\..\..\..\..\Libraries\MDR /
//                    32F9Qx_StdPeriph_Driver\inc\USB_Library\ -I             /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\..\..\..\..\Libraries\CMS /
//                    IS\CM3\CoreSupport\ -I C:\WORK\Milandr.MDR1986BExx.1.4. /
//                    0\Example_Projects\MDR1986VE91_Eval\Demo\IAR_Systems\.. /
//                    \..\..\..\Libraries\CMSIS\CM3\DeviceSupport\MDR32F9Qx\i /
//                    nc\ -I C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projec /
//                    ts\MDR1986VE91_Eval\Demo\IAR_Systems\..\..\..\..\Librar /
//                    ies\CMSIS\CM3\DeviceSupport\MDR32F9Qx\startup\iar\ -I   /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\..\..\..\..\Example_Proje /
//                    cts\MDR1986VE91_Eval\inc\ -Ohz                          /
//    List file    =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\MDR32F9Qx_bkp. /
//                    s                                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MDR32F9Qx_bkp

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memclr4

        PUBLIC BKP_DeInit
        PUBLIC BKP_JTAGA_CMD
        PUBLIC BKP_JTAGB_CMD
        PUBLIC BKP_RTC_Calibration
        PUBLIC BKP_RTC_Enable
        PUBLIC BKP_RTC_GetCounter
        PUBLIC BKP_RTC_GetDivider
        PUBLIC BKP_RTC_GetFlagStatus
        PUBLIC BKP_RTC_ITConfig
        PUBLIC BKP_RTC_Reset
        PUBLIC BKP_RTC_SetAlarm
        PUBLIC BKP_RTC_SetCounter
        PUBLIC BKP_RTC_SetPrescaler
        PUBLIC BKP_RTC_WaitForUpdate
        PUBLIC BKP_RTCclkSource

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_StdPeriph_Driver\src\MDR32F9Qx_bkp.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    MDR32F9Qx_bkp.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.4.0
//    6   * @date    21/07/2011
//    7   * @brief   This file contains all the BKP firmware functions.
//    8   ******************************************************************************
//    9   * <br><br>
//   10   *
//   11   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   12   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   13   * TIME. AS A RESULT, PHYTON SHALL NOT BE HELD LIABLE FOR ANY DIRECT, INDIRECT
//   14   * OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   15   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   16   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   17   *
//   18   * <h2><center>&copy; COPYRIGHT 2011 Phyton</center></h2>
//   19   ******************************************************************************
//   20   * FILE MDR32F9Qx_bkp.c
//   21   */
//   22 /* Includes ------------------------------------------------------------------*/
//   23 #include "MDR32F9Qx_config.h"
//   24 #include "MDR32F9Qx_bkp.h"
//   25 #include "MDR32F9Qx_rst_clk.h"
//   26 
//   27 
//   28 #define ASSERT_INFO_FILE_ID FILEID__MDR32F9X_BKP_C
//   29 
//   30 /** @addtogroup __MDR32F9Qx_StdPeriph_Driver MDR32F9Qx Standard Peripherial Driver
//   31   * @{
//   32   */
//   33 
//   34 /** @defgroup BKP BKP
//   35   * @{
//   36   */
//   37 
//   38 /** @defgroup BKP_Private_TypesDefinitions BKP Private Types Definitions
//   39   * @{
//   40   */
//   41 
//   42 /** @} */ /* End of group BKP_Private_TypesDefinitions */
//   43 
//   44 /** @defgroup BKP_Private_Defines BKP Private Defines
//   45   * @{
//   46   */
//   47 
//   48 /* BKP registers bit address in the alias region */
//   49 #define PERIPH_BASE                 0x40000000
//   50 #define PERIPH_BB_BASE              0x42000000
//   51 #define BKP_OFFSET                 (MDR_BKP_BASE - PERIPH_BASE)
//   52 
//   53 #define SFR_OFFSET(TP, MOD, SFR)    ((uint32_t)&((TP*)MOD)->SFR)
//   54 #define BB_ADDR(TP, MOD, SFR, BIT)  (PERIPH_BB_BASE + SFR_OFFSET(TP, MOD, SFR)*32 + BIT*4)
//   55 #define BKP_BB(SFR, BIT)            BB_ADDR(MDR_BKP_TypeDef, BKP_OFFSET, SFR, BIT)
//   56 
//   57 #if defined (USE_MDR1986VE9x)
//   58 #define BKP_JTAGA_BB                BKP_BB(REG_0E, BKP_REG_0E_JTAGA_Pos)
//   59 #define BKP_JTAGB_BB                BKP_BB(REG_0E, BKP_REG_0E_JTAGB_Pos)
//   60 #define BKP_FPOR_BB                 BKP_BB(REG_0E, BKP_REG_0E_FPOR_Pos)
//   61 #define BKP_STANDBY_BB              BKP_BB(REG_0F, BKP_REG_0F_STANDBY_Pos)
//   62 #define RTC_ENABLE_BB               BKP_BB(REG_0F, BKP_REG_0F_RTC_EN_Pos)
//   63 #define RTC_RESET_BB                BKP_BB(REG_0F, BKP_REG_0F_RTC_RESET_Pos)
//   64 #define RTC_WEC_BB                  BKP_BB(RTC_CS, BKP_RTC_CS_WEC_Pos)
//   65 #endif // #if defined (USE_MDR1986VE9x)
//   66 /* --------------------- BKP registers bit mask ------------------------ */
//   67 
//   68 /* BKP_REG0E register bit mask */
//   69 #define DUcc_Mask         ((uint32_t)(BKP_REG_0E_LOW_Msk | BKP_REG_0E_SELECTRI_Msk))
//   70 #define DUccTrim_Mask     ((uint32_t)BKP_REG_0E_TRIM_Msk)
//   71 #define BKP_REG_0E_ON     ((uint32_t)(0x01U<<11))
//   72 #define BKP_REG_0E_OFF    ((uint32_t)(~((0x01U<<31)|(0x07U<<8)|(0x3FU))))
//   73 
//   74 /* CFR register bit mask */
//   75 #define WDGTB_Mask        ((uint32_t)0xFFFFFE7F)
//   76 #define WIN_Mask          ((uint32_t)0x7F)
//   77 #define CTR_Mask          ((uint32_t)0x7F)
//   78 
//   79 /** @} */ /* End of group BKP_Private_Defines */
//   80 
//   81 /** @defgroup BKP_Private_Macros BKP Private Macros
//   82   * @{
//   83   */
//   84 
//   85 /** @} */ /* End of group BKP_Private_Macros */
//   86 
//   87 /** @defgroup BKP_Private_Variables BKP Private Variables
//   88   * @{
//   89   */
//   90 
//   91 /** @} */ /* End of group BKP_Private_Variables */
//   92 
//   93 /** @defgroup BKP_Private_Functions BKP Private Functions
//   94   * @{
//   95   */
//   96 
//   97 /**
//   98   * @brief  BKP_DeInit - Deinitializes the BKP peripheral registers to their default reset values.
//   99   * @param  None
//  100   * @retval None
//  101   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  102 void BKP_DeInit(void)
//  103 {
BKP_DeInit:
        PUSH     {R4,LR}
//  104   #define BKP_RTC_CS_NUM ((uint32_t) (SFR_OFFSET(MDR_BKP_TypeDef, BKP_OFFSET, RTC_CS) - BKP_OFFSET)/4)
//  105   #define BKP_REG_0F_NUM ((uint32_t) (SFR_OFFSET(MDR_BKP_TypeDef, BKP_OFFSET, REG_0F) - BKP_OFFSET)/4)
//  106   #define BKP_REG_0E_NUM ((uint32_t) (SFR_OFFSET(MDR_BKP_TypeDef, BKP_OFFSET, REG_0E) - BKP_OFFSET)/4)
//  107   #define BKP_RTC_CNT_NUM ((uint32_t) (SFR_OFFSET(MDR_BKP_TypeDef, BKP_OFFSET, RTC_CNT) - BKP_OFFSET)/4)
//  108 
//  109   uint32_t * _bkp = (uint32_t *) MDR_BKP_BASE;
//  110   uint32_t i;
//  111 
//  112   for ( i = 0; i < BKP_REG_0E_NUM; i++)
//  113   {
//  114     _bkp[i] = 0;
        LDR.N    R4,??DataTable13  ;; 0x400d8000
        MOVS     R1,#+56
        MOV      R0,R4
        BL       __aeabi_memclr4
//  115   }
//  116 
//  117   for ( i = BKP_RTC_CNT_NUM; i <= BKP_RTC_CS_NUM; i++)
//  118   {
//  119     _bkp[i] = 0;
        MOVS     R1,#+20
        LDR.N    R0,??DataTable13_1  ;; 0x400d8040
        BL       __aeabi_memclr4
//  120   }
//  121 
//  122   MDR_BKP -> REG_0E |= (uint32_t) (BKP_REG_0E_ON);
        LDR      R0,[R4, #+56]
        ORR      R0,R0,#0x800
        STR      R0,[R4, #+56]
//  123   MDR_BKP -> REG_0E &= (uint32_t) (BKP_REG_0E_OFF);
        LDR      R0,[R4, #+56]
        LDR.N    R1,??DataTable13_2  ;; 0x7ffff8c0
        ANDS     R0,R1,R0
        STR      R0,[R4, #+56]
//  124   MDR_BKP -> REG_0F = (uint32_t) (BKP_REG_0F_LSI_ON);
        MOV      R0,#+32768
        STR      R0,[R4, #+60]
//  125 }
        POP      {R4,PC}          ;; return
//  126 
//  127 #if defined (USE_MDR1986VE9x)
//  128 /**
//  129   * @brief  Enables or disables the JTAG A.
//  130   * @param  NewState: new state of the JTAG A.
//  131   *         @arg ENABLE
//  132   *         @arg DISABLE
//  133   * @retval None
//  134   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  135 void BKP_JTAGA_CMD(FunctionalState NewState)
//  136 {
//  137   /* Check the parameters */
//  138   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  139 
//  140   *(__IO uint32_t *) BKP_JTAGA_BB = (uint32_t)NewState;
BKP_JTAGA_CMD:
        LDR.N    R1,??DataTable13_3  ;; 0x43b00718
        STR      R0,[R1, #+0]
//  141 }
        BX       LR               ;; return
//  142 
//  143 
//  144 /**
//  145   * @brief  Enables or disables the JTAG B.
//  146   * @param  NewState: new state of the JTAG B.
//  147   *         @arg ENABLE
//  148   *         @arg DISABLE
//  149   * @retval None
//  150   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  151 void BKP_JTAGB_CMD(FunctionalState NewState)
//  152 {
//  153   /* Check the parameters */
//  154   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  155 
//  156   *(__IO uint32_t *) BKP_JTAGB_BB = (uint32_t)NewState;
BKP_JTAGB_CMD:
        LDR.N    R1,??DataTable13_4  ;; 0x43b0071c
        STR      R0,[R1, #+0]
//  157 }
        BX       LR               ;; return
//  158 #endif
//  159 
//  160 /**
//  161   * @brief  BKP_RTCclkSource - Configures the RTC clock source.
//  162   * @param  RTC_CLK: specifies the RTC clock source.
//  163   *         @arg BKP_RTC_LSIclk: LSI oscillator clock is selected as RTC clock source.
//  164   *         @arg BKP_RTC_LSEclk: LSE oscillator clock is selected as RTC clock source.
//  165   *         @arg BKP_RTC_HSIclk: HSI oscillator clock is selected as RTC clock source.
//  166   *         @arg BKP_RTC_HSEclk: HSE oscillator clock is selected as RTC clock source.
//  167   * @retval None
//  168   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  169 void BKP_RTCclkSource(uint32_t RTC_CLK)
//  170 {
//  171 	uint32_t tmpreg;
//  172 
//  173 	/* Check the parameters */
//  174 	assert_param(IS_RTC_CLK_SOURCE(RTC_CLK));
//  175 	/* Clear BKP_REG0F[3:2] bits */
//  176 	tmpreg = MDR_BKP ->REG_0F & (uint32_t) (~BKP_REG_0F_RTC_SEL_Msk );
BKP_RTCclkSource:
        LDR.N    R1,??DataTable13_5  ;; 0x400d803c
        LDR      R2,[R1, #+0]
//  177 	/* Set BKP_REG0F[3:2] bits according to RTC clock source*/
//  178 	tmpreg |= BKP_REG_0F_RTC_SEL_Msk & RTC_CLK;
//  179 	MDR_BKP ->REG_0F = tmpreg;
        BIC      R2,R2,#0xC
        AND      R0,R0,#0xC
        B.N      ?Subroutine0
//  180 
//  181 }
//  182 
//  183 
//  184 /**
//  185   * @brief  BKP_RTC_Enable - Enables or disables the RTC.
//  186   * @param  NewState: new state of the RTC.
//  187   *         @arg ENABLE
//  188   *         @arg DISABLE
//  189   * @retval None
//  190   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  191 void BKP_RTC_Enable ( FunctionalState NewState )
//  192 {
//  193 	/* Check the parameters */
//  194 	assert_param(IS_FUNCTIONAL_STATE(NewState));
//  195 #if defined (USE_MDR1986VE9x)
//  196 	*(__IO uint32_t *) RTC_ENABLE_BB = (uint32_t) NewState;
BKP_RTC_Enable:
        LDR.N    R1,??DataTable13_6  ;; 0x43b00790
        STR      R0,[R1, #+0]
//  197 #elif defined (USE_MDR1986VE3) || defined (USE_MDR1986VE1T)
//  198 	if(NewState != DISABLE){
//  199 		MDR_BKP->REG_0F |= BKP_REG_0F_RTC_EN;
//  200 	}
//  201 	else{
//  202 		MDR_BKP->REG_0F &= ~BKP_REG_0F_RTC_EN;
//  203 	}
//  204 #endif
//  205 }
        BX       LR               ;; return
//  206 
//  207 /**
//  208   * @brief  BKP_RTC_Calibration - Configures the RTC clock source.
//  209   * @param  RTC_Calibration: specifies the tact drop count.
//  210   *         @arg 0 <= RTC_Calibration <= 255.
//  211   * @retval None
//  212   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  213 void BKP_RTC_Calibration(uint32_t RTC_Calibration)
//  214 {
//  215   uint32_t tmpreg;
//  216 
//  217   /* Check the parameters */
//  218   assert_param(IS_RTC_CALIBRATION(RTC_Calibration));
//  219   /* Clear BKP_REG0F[12:5] bits */
//  220   tmpreg  = MDR_BKP -> REG_0F & (uint32_t) (~BKP_REG_0F_CAL_Msk);
BKP_RTC_Calibration:
        LDR.N    R1,??DataTable13_5  ;; 0x400d803c
        LDR      R2,[R1, #+0]
//  221   /* Set BKP_REG0F[12:5] bits according to RTC clock source*/
//  222   tmpreg |= BKP_REG_0F_CAL_Msk & (RTC_Calibration << BKP_REG_0F_CAL_Pos);
//  223   MDR_BKP -> REG_0F = tmpreg;
        BIC      R2,R2,#0x1FE0
        LSLS     R0,R0,#+5
        AND      R0,R0,#0x1FE0
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  224 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        ORRS     R0,R0,R2
        STR      R0,[R1, #+0]
        BX       LR               ;; return
//  225 
//  226 
//  227 /**
//  228   * @brief  BKP_RTC_Reset -  Reset the RTC.
//  229   * @param  NewState: new state of the RTC.
//  230   *         @arg ENABLE  : Reset the RTC
//  231   *         @arg DISABLE : Not reset the RTC
//  232   * @retval None
//  233   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  234 void BKP_RTC_Reset ( FunctionalState NewState )
//  235 {
//  236 	/* Check the parameters */
//  237 	assert_param(IS_FUNCTIONAL_STATE(NewState));
//  238 
//  239 #if defined (USE_MDR1986VE9x)
//  240 	*(__IO uint32_t *) RTC_RESET_BB = (uint32_t) NewState;
BKP_RTC_Reset:
        LDR.N    R1,??DataTable13_7  ;; 0x43b007fc
        STR      R0,[R1, #+0]
//  241 #elif defined (USE_MDR1986VE3) || defined (USE_MDR1986VE1T)
//  242 	if(NewState != DISABLE){
//  243 		MDR_BKP->REG_0F |= BKP_REG_0F_RTC_RESET;
//  244 	}
//  245 	else{
//  246 		MDR_BKP->REG_0F &= ~BKP_REG_0F_RTC_RESET;
//  247 	}
//  248 #endif // #elif defined (USE_MDR1986VE3)
//  249 }
        BX       LR               ;; return
//  250 
//  251 /**
//  252   * @brief  BKP_RTC_ITConfig - Enables or disables the specified RTC interrupts.
//  253   * @param  BKP_RTC_IT: specifies the RTC interrupts sources to be enabled or disabled.
//  254   *   This parameter can be any combination of the following values:
//  255   *     @arg BKP_RTC_IT_ALRF: Alarm interrupt enable
//  256   *     @arg BKP_RTC_IT_SECF: Second interrupt enable
//  257   *     @arg BKP_RTC_IT_OWF : Overflow interrupt enable
//  258   * @param  NewState: new state of the specified RTC interrupts.
//  259   *   This parameter can be: ENABLE or DISABLE.
//  260   * @retval None
//  261   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  262 void BKP_RTC_ITConfig(uint32_t BKP_RTC_IT, FunctionalState NewState)
//  263 {
//  264   /* Check the parameters */
//  265   assert_param(IS_RTC_CLK_IT(BKP_RTC_IT));
//  266   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  267 
//  268   if (NewState != DISABLE)
BKP_RTC_ITConfig:
        LDR.N    R2,??DataTable13_8  ;; 0x400d8050
        CMP      R1,#+0
        LDR      R1,[R2, #+0]
        ITE      NE 
        ORRNE    R0,R0,R1
        BICEQ    R0,R1,R0
//  269   {
//  270     MDR_BKP->RTC_CS |= BKP_RTC_IT;
//  271   }
//  272   else
//  273   {
//  274     MDR_BKP->RTC_CS &= (uint32_t)~BKP_RTC_IT;
        STR      R0,[R2, #+0]
//  275   }
//  276 }
        BX       LR               ;; return
//  277 
//  278 /**
//  279   * @brief  BKP_RTC_GetCounter - Gets the RTC counter value.
//  280   * @param  None
//  281   * @retval RTC counter value.
//  282   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  283 uint32_t BKP_RTC_GetCounter(void)
//  284 {
//  285   return MDR_BKP -> RTC_CNT;
BKP_RTC_GetCounter:
        LDR.N    R0,??DataTable13_1  ;; 0x400d8040
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  286 }
//  287 
//  288 /**
//  289   * @brief  BKP_RTC_SetCounter - Sets the RTC counter value.
//  290   * @param  CounterValue: RTC counter new value.
//  291   * @retval None
//  292   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  293 void BKP_RTC_SetCounter(uint32_t CounterValue)
//  294 {
//  295   MDR_BKP -> RTC_CNT = CounterValue;
BKP_RTC_SetCounter:
        LDR.N    R1,??DataTable13_1  ;; 0x400d8040
        STR      R0,[R1, #+0]
//  296 }
        BX       LR               ;; return
//  297 
//  298 /**
//  299   * @brief  BKP_RTC_SetAlarm - Sets the RTC alarm value.
//  300   * @param  AlarmValue: RTC alarm new value.
//  301   * @retval None
//  302   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  303 void  BKP_RTC_SetAlarm(uint32_t AlarmValue)
//  304 {
//  305   MDR_BKP -> RTC_ALRM = AlarmValue;
BKP_RTC_SetAlarm:
        LDR.N    R1,??DataTable13_9  ;; 0x400d804c
        STR      R0,[R1, #+0]
//  306 }
        BX       LR               ;; return
//  307 
//  308 /**
//  309   * @brief  BKP_RTC_GetDivider - Gets the RTC divider value.
//  310   * @param  None
//  311   * @retval RTC Divider value.
//  312   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  313 uint32_t BKP_RTC_GetDivider(void)
//  314 {
//  315   return MDR_BKP -> RTC_DIV;
BKP_RTC_GetDivider:
        LDR.N    R0,??DataTable13_10  ;; 0x400d8044
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  316 }
//  317 
//  318 /**
//  319   * @brief  BKP_RTC_SetPrescaler - Sets the RTC prescaler (RTC_DIV) preloaded value.
//  320   * @param  PrescalerValue: RTC prescaler new value.
//  321   *         This parameter should be less or equal then 0x000FFFFF
//  322   * @retval None
//  323   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  324 void BKP_RTC_SetPrescaler(uint32_t PrescalerValue)
//  325 {
//  326   /* Check the parameter */
//  327   assert_param(IS_BKP_PRESCALER_VALUE(PrescalerValue));
//  328 
//  329   MDR_BKP -> RTC_PRL = PrescalerValue;
BKP_RTC_SetPrescaler:
        LDR.N    R1,??DataTable13_11  ;; 0x400d8048
        STR      R0,[R1, #+0]
//  330 }
        BX       LR               ;; return
//  331 
//  332 /**
//  333   * @brief  BKP_RTC_WaitForUpdate - Waits until last write operation on RTC registers has finished.
//  334   * @note   This function must be called before any write to RTC registers.
//  335   * @param  None
//  336   * @retval None
//  337   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  338 void BKP_RTC_WaitForUpdate ( void )
//  339 {
//  340 	/* Loop until WEC flag is set */
//  341 #if defined (USE_MDR1986VE9x)
//  342 	while (*(__IO uint32_t *) RTC_WEC_BB != 0);
BKP_RTC_WaitForUpdate:
??BKP_RTC_WaitForUpdate_0:
        LDR.N    R0,??DataTable13_12  ;; 0x43b00a18
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??BKP_RTC_WaitForUpdate_0
//  343 #elif defined (USE_MDR1986VE3) || defined (USE_MDR1986VE1T)
//  344 	while((MDR_BKP->RTC_CS & BKP_RTC_CS_WEC) == BKP_RTC_CS_WEC);
//  345 #endif
//  346 
//  347 }
        BX       LR               ;; return
//  348 
//  349 /**
//  350   * @brief  BKP_RTC_GetFlagStatus - Checks whether the specified RTC flag is set or not.
//  351   * @param  BKP_RTC_FLAG: specifies the flag to check.
//  352   *   This parameter can be one the following values:
//  353   *     @arg BKP_RTC_FLAG_WEC: RTC Write operation ended flag
//  354   *     @arg BKP_RTC_FLAG_OWF: Overflow flag
//  355   *     @arg BKP_RTC_FLAG_ALRF: Alarm flag
//  356   *     @arg BKP_RTC_FLAG_SECF: Second flag
//  357   * @retval The new state of BKP_RTC_FLAG (SET or RESET).
//  358   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  359 FlagStatus BKP_RTC_GetFlagStatus(uint32_t BKP_RTC_FLAG)
//  360 {
//  361   FlagStatus status;
//  362 
//  363   /* Check the parameters */
//  364   assert_param(IS_BKP_RTC_GET_FLAG(BKP_RTC_FLAG));
//  365 
//  366   if ((MDR_BKP -> RTC_CS & BKP_RTC_FLAG) != 0)
BKP_RTC_GetFlagStatus:
        LDR.N    R1,??DataTable13_8  ;; 0x400d8050
        LDR      R1,[R1, #+0]
        ANDS     R0,R0,R1
        IT       NE 
        MOVNE    R0,#+1
//  367   {
//  368     status = SET;
//  369   }
//  370   else
//  371   {
//  372     status = RESET;
//  373   }
//  374   return status;
        UXTB     R0,R0
        BX       LR               ;; return
//  375 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     0x400d8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     0x400d8040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     0x7ffff8c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     0x43b00718

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     0x43b0071c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     0x400d803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_6:
        DC32     0x43b00790

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_7:
        DC32     0x43b007fc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_8:
        DC32     0x400d8050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_9:
        DC32     0x400d804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_10:
        DC32     0x400d8044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_11:
        DC32     0x400d8048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_12:
        DC32     0x43b00a18

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  376 
//  377 /** @} */ /* End of group BKP_Private_Functions */
//  378 
//  379 /** @} */ /* End of group BKP */
//  380 
//  381 /** @} */ /* End of group __MDR32F9Qx_StdPeriph_Driver */
//  382 
//  383 /******************* (C) COPYRIGHT 2010 Phyton *********************************
//  384 *
//  385 * END OF FILE MDR32F9Qx_bkp.c */
//  386 
// 
// 226 bytes in section .text
// 
// 226 bytes of CODE memory
//
//Errors: none
//Warnings: none
