///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:57 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_power.c                   /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_power.c --preprocess      /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\MDR32F9Qx_powe /
//                    r.s                                                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MDR32F9Qx_power

        #define SHT_PROGBITS 0x1

        PUBLIC POWER_ClearFlag
        PUBLIC POWER_DUccMode
        PUBLIC POWER_DUccStandby
        PUBLIC POWER_DUccTrim
        PUBLIC POWER_DeInit
        PUBLIC POWER_EnterSTANDBYMode
        PUBLIC POWER_EnterSTOPMode
        PUBLIC POWER_FlagPORstatus
        PUBLIC POWER_GetFlagStatus
        PUBLIC POWER_PVBDlevelConfig
        PUBLIC POWER_PVD_INVconfig
        PUBLIC POWER_PVD_ITconfig
        PUBLIC POWER_PVDenable
        PUBLIC POWER_PVDlevelConfig
        PUBLIC POWER_SetFlagPOR

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_StdPeriph_Driver\src\MDR32F9Qx_power.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    MDR32F9Qx_power.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.4.0
//    6   * @date    21/07/2011
//    7   * @brief   This file contains all the POWER firmware functions.
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
//   20   * FILE MDR32F9Qx_power.c
//   21   */
//   22 /* Includes ------------------------------------------------------------------*/
//   23 #include "MDR32F9Qx_config.h"
//   24 #include "MDR32F9Qx_power.h"
//   25 #include "MDR32F9Qx_rst_clk.h"
//   26 
//   27 
//   28 #define ASSERT_INFO_FILE_ID FILEID__MDR32F9X_POWER_C
//   29 
//   30 /** @addtogroup __MDR32F9Qx_StdPeriph_Driver MDR32F9Qx Standard Peripherial Driver
//   31   * @{
//   32   */
//   33 
//   34 /** @defgroup POWER POWER
//   35   * @{
//   36   */
//   37 
//   38 /** @defgroup POWER_Private_TypesDefinitions POWER Private Types Definitions
//   39   * @{
//   40   */
//   41 
//   42 /** @} */ /* End of group POWER_Private_TypesDefinitions */
//   43 
//   44 /** @defgroup POWER_Private_Defines POWER Private Defines
//   45   * @{
//   46   */
//   47 
//   48 #if defined (USE_MDR1986VE9x) /* For Cortex M3 */
//   49 /* POWER registers bit address in the alias region */
//   50 #define PERIPH_BASE                 0x40000000
//   51 #define PERIPH_BB_BASE              0x42000000
//   52 #define POWER_OFFSET                (MDR_POWER_BASE - PERIPH_BASE)
//   53 #define BKP_OFFSET                  (MDR_BKP_BASE - PERIPH_BASE)
//   54 
//   55 #define SFR_OFFSET(TP, MOD, SFR)    ((uint32_t)&((TP*)MOD)->SFR)
//   56 #define BB_ADDR(TP, MOD, SFR, BIT)  (PERIPH_BB_BASE + SFR_OFFSET(TP, MOD, SFR)*32 + BIT*4)
//   57 #define POWER_BB(SFR, BIT)          BB_ADDR(MDR_POWER_TypeDef, POWER_OFFSET, SFR, BIT)
//   58 #define BKP_BB(SFR, BIT)            BB_ADDR(MDR_BKP_TypeDef, BKP_OFFSET, SFR, BIT)
//   59 
//   60 #define POWER_PVDEN_BB              POWER_BB(PVDCS, POWER_PVDCS_PVDEN_Pos)
//   61 
//   62 #define BKP_FPOR_BB                 BKP_BB(REG_0E, BKP_REG_0E_FPOR_Pos)
//   63 #define BKP_STANDBY_BB              BKP_BB(REG_0F, BKP_REG_0F_STANDBY_Pos)
//   64 
//   65 #endif //  #if defined (USE_MDR1986VE9x) /* For Cortex M3 */
//   66 
//   67 /* --------------------- POWER registers bit mask ------------------------ */
//   68 
//   69 /* BKP_REG0E register bit mask */
//   70 #define DUcc_Mask         ((uint32_t)(BKP_REG_0E_LOW_Msk | BKP_REG_0E_SELECTRI_Msk))
//   71 #define DUccTrim_Mask     ((uint32_t)BKP_REG_0E_TRIM_Msk)
//   72 
//   73 /* PVDCS register bit mask */
//   74 
//   75 /** @} */ /* End of group POWER_Private_Defines */
//   76 
//   77 /** @defgroup POWER_Private_Macros POWER Private Macros
//   78   * @{
//   79   */
//   80 
//   81 /** @} */ /* End of group POWER_Private_Macros */
//   82 
//   83 /** @defgroup POWER_Private_Variables POWER Private Variables
//   84   * @{
//   85   */
//   86 
//   87 /** @} */ /* End of group POWER_Private_Variables */
//   88 
//   89 /** @defgroup POWER_Private_Function_Prototypes POWER Private Function Prototypes
//   90   * @{
//   91   */
//   92 
//   93 /** @} */ /* End of group POWER_Private_FunctionPrototypes */
//   94 
//   95 /** @defgroup POWER_Private_Functions POWER Private Functions
//   96   * @{
//   97   */
//   98 
//   99 /**
//  100   * @brief  Deinitializes the POWER peripheral registers to their default reset values.
//  101   * @param  None
//  102   * @retval None
//  103   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  104 void POWER_DeInit(void)
//  105 {
//  106   MDR_POWER -> PVDCS = (uint32_t) 0x00000000;
POWER_DeInit:
        LDR.N    R0,??DataTable12  ;; 0x40058000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  107 }
        BX       LR               ;; return
//  108 
//  109 /**
//  110   * @brief  POWER_SET_DUCC_MODE - Select the internal voltage regulator mode
//  111   * @param  DUccMode: specifies the DUcc mode.
//  112   *   This parameter can be one of the following values:
//  113   *     @arg POWER_DUcc_upto_10MHz:  system clock is up to 10 MHz
//  114   *     @arg POWER_DUcc_upto_200kHz: system clock is up to 200 kHz
//  115   *     @arg POWER_DUcc_upto_500kHz: system clock is up to 500 kHz
//  116   *     @arg POWER_DUcc_clk_off:   all clocks are switnhed off
//  117   *     @arg POWER_DUcc_upto_1MHz:   system clock is up to 1 MHz
//  118   *     @arg POWER_DUcc_upto_40MHz:  system clock is up to 40 MHz
//  119   *     @arg POWER_DUcc_upto_80MHz:  system clock is up to 80 MHz
//  120   *     @arg POWER_DUcc_over_80MHz:  system clock is over 80 MHz
//  121   * @retval None
//  122   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  123 void POWER_DUccMode(uint32_t DUccMode)
//  124 {
//  125   uint32_t tmpreg;
//  126   /* Check the parameters */
//  127   assert_param(IS_POWER_DUCC_MODE(DUccMode));
//  128   /* Clear POWER_REG0E[5:0] bits */
//  129   tmpreg  = MDR_BKP -> REG_0E & (uint32_t) (~DUcc_Mask);
POWER_DUccMode:
        LDR.N    R1,??DataTable12_1  ;; 0x400d8038
        LDR      R2,[R1, #+0]
//  130   /* Set POWER_REG0E[5:0] bits according to DUcc mode */
//  131   tmpreg |= DUcc_Mask & DUccMode;
//  132   MDR_BKP -> REG_0E = tmpreg;
        LSRS     R2,R2,#+6
        AND      R0,R0,#0x3F
        ORRS     R0,R0,R2, LSL #+6
        STR      R0,[R1, #+0]
//  133 }
        BX       LR               ;; return
//  134 
//  135 /**
//  136   * @brief  POWER_SET_DUCC_TRIM - Set the internal voltage regulator trim
//  137   * @param  DUccTrim: specifies the DUcc trim.
//  138   *   This parameter can be one of the following values:
//  139   *     @arg POWER_DUcc_plus_100mV:  trim DUcc with + 100mV
//  140   *     @arg POWER_DUcc_plus_060mV:  trim DUcc with + 060mV
//  141   *     @arg POWER_DUcc_plus_040mV:  trim DUcc with + 040mV
//  142   *     @arg POWER_DUcc_plus_010mV:  trim DUcc with + 010mV
//  143   *     @arg POWER_DUcc_minus_010mV: trim DUcc with - 010mV
//  144   *     @arg POWER_DUcc_minus_040mV: trim DUcc with - 040mV
//  145   *     @arg POWER_DUcc_minus_060mV: trim DUcc with - 060mV
//  146   *     @arg POWER_DUcc_minus_100mV: trim DUcc with - 100mV
//  147   * @retval None
//  148   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  149 void POWER_DUccTrim(uint32_t DUccTrim)
//  150 {
//  151   uint32_t tmpreg;
//  152   /* Check the parameters */
//  153   assert_param(IS_POWER_DUCC_TRIM(DUccTrim));
//  154   /* Clear POWER_REG0E[5:0] bits */
//  155   tmpreg  = MDR_BKP -> REG_0E & (uint32_t) (~DUccTrim_Mask);
POWER_DUccTrim:
        LDR.N    R1,??DataTable12_1  ;; 0x400d8038
        LDR      R2,[R1, #+0]
//  156   /* Set POWER_REG0E[5:0] bits according to DUcc mode */
//  157   tmpreg |= DUccTrim_Mask & DUccTrim;
//  158   MDR_BKP -> REG_0E = tmpreg;
        BIC      R2,R2,#0x700
        AND      R0,R0,#0x700
        B.N      ?Subroutine0
//  159 }
//  160 
//  161 /**
//  162   * @brief  POWER_DUccStandby - Enter standby mode.
//  163   * @param  None
//  164   * @retval None
//  165   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  166 void POWER_DUccStandby ( void )
//  167 {
//  168 #if defined (USE_MDR1986VE9x)
//  169 *(__IO uint32_t *) BKP_STANDBY_BB = (uint32_t) 0x01;
POWER_DUccStandby:
        LDR.N    R0,??DataTable12_2  ;; 0x43b007f8
        B.N      ?Subroutine1
//  170 #elif defined (USE_MDR1986VE3)
//  171 	MDR_BKP->REG_0F |= BKP_REG_0F_STANDBY;
//  172 #endif
//  173 
//  174 }
//  175 
//  176 /**
//  177   * @brief  POWER_PVDlevelConfig - Configures the voltage threshold detected
//  178   *         by the Power Voltage Detector(PVD).
//  179   * @param  POWER_PVDlevel: specifies the PVD detection level
//  180   *   This parameter can be one of the following values:
//  181   *     @arg PWR_PVDlevel_2V0: PVD detection level set to 2.0V
//  182   *     @arg PWR_PVDlevel_2V2: PVD detection level set to 2.2V
//  183   *     @arg PWR_PVDlevel_2V4: PVD detection level set to 2.4V
//  184   *     @arg PWR_PVDlevel_2V6: PVD detection level set to 2.6V
//  185   *     @arg PWR_PVDlevel_2V8: PVD detection level set to 2.8V
//  186   *     @arg PWR_PVDlevel_3V0: PVD detection level set to 3.0V
//  187   *     @arg PWR_PVDlevel_3V2: PVD detection level set to 3.2V
//  188   *     @arg PWR_PVDlevel_3V4: PVD detection level set to 3.4V
//  189   * @retval None
//  190   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  191 void POWER_PVDlevelConfig(uint32_t POWER_PVDlevel)
//  192 {
//  193   uint32_t tmpreg;
//  194   /* Check the parameters */
//  195   assert_param(IS_POWER_PVD_LEVEL(POWER_PVDlevel));
//  196   tmpreg = MDR_POWER->PVDCS;
POWER_PVDlevelConfig:
        LDR.N    R1,??DataTable12  ;; 0x40058000
        LDR      R2,[R1, #+0]
//  197   /* Clear PLS[5:3] bits */
//  198   tmpreg &= (uint32_t) ~POWER_PVDCS_PLS_Msk;
//  199   /* Set PLS[5:3] bits according to POWER_PVDlevel value */
//  200   tmpreg |= (POWER_PVDlevel & POWER_PVDCS_PLS_Msk);
//  201   /* Store the new value */
//  202   MDR_POWER->PVDCS = tmpreg;
        BIC      R2,R2,#0x38
        AND      R0,R0,#0x38
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  203 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        ORRS     R0,R0,R2
        STR      R0,[R1, #+0]
        BX       LR               ;; return
//  204 
//  205 /**
//  206   * @brief  POWER_PVBDlevelConfig - Configures the voltage threshold detected
//  207   *         by the Power Battery Voltage Detector(PVBD).
//  208   * @param  POWER_PVBDlevel: specifies the PVBD detection level
//  209   *   This parameter can be one of the following values:
//  210   *     @arg PWR_PVBDlevel_1V8: PVBD detection level set to 1.8V
//  211   *     @arg PWR_PVBDlevel_2V2: PVBD detection level set to 2.2V
//  212   *     @arg PWR_PVBDlevel_2V6: PVBD detection level set to 2.6V
//  213   *     @arg PWR_PVBDlevel_3V0: PVBD detection level set to 3.0V
//  214   * @retval None
//  215   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  216 void POWER_PVBDlevelConfig(uint32_t POWER_PVBDlevel)
//  217 {
//  218   uint32_t tmpreg;
//  219   /* Check the parameters */
//  220   assert_param(IS_POWER_PVBD_LEVEL(POWER_PVBDlevel));
//  221   tmpreg = MDR_POWER->PVDCS;
POWER_PVBDlevelConfig:
        LDR.N    R1,??DataTable12  ;; 0x40058000
        LDR      R2,[R1, #+0]
//  222   /* Clear PBLS[2:1] bits */
//  223   tmpreg &= (uint32_t) ~POWER_PVDCS_PBLS_Msk;
//  224   /* Set PBLS[2:1] bits according to POWER_PVBDlevel value */
//  225   tmpreg |= (POWER_PVBDlevel & POWER_PVDCS_PBLS_Msk);
//  226   /* Store the new value */
//  227   MDR_POWER->PVDCS = tmpreg;
        BIC      R2,R2,#0x6
        AND      R0,R0,#0x6
        B.N      ?Subroutine0
//  228 }
//  229 
//  230 /**
//  231   * @brief  POWER_SetFlagPOR - Set power on reset flag (FPOR).
//  232   * @param  None
//  233   * @retval None
//  234   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  235 void POWER_SetFlagPOR ( void )
//  236 {
//  237 #if defined (USE_MDR1986VE9x)
//  238 	*(__IO uint32_t *) BKP_FPOR_BB = (uint32_t) 0x01;
POWER_SetFlagPOR:
        LDR.N    R0,??DataTable12_3  ;; 0x43b0072c
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
//  239 #elif defined (USE_MDR1986VE3) || defined (USE_MDR1986VE1T)
//  240 	MDR_BKP->REG_0E |= BKP_REG_0E_FPOR;
//  241 #endif
//  242 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
        BX       LR               ;; return
//  243 
//  244 /**
//  245   * @brief  POWER_FlagPORstatus - power on reset flag (FPOR) status
//  246   * @param  None
//  247   * @retval enum ErrorStatus - SUCCESS if FPOR is zero, else ERROR
//  248   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  249 ErrorStatus POWER_FlagPORstatus(void)
//  250 {
//  251   ErrorStatus state = ERROR;
POWER_FlagPORstatus:
        MOVS     R0,#+0
//  252 #if defined (USE_MDR1986VE9x)
//  253   if (*(__IO uint32_t *) BKP_FPOR_BB == 0)
        LDR.N    R1,??DataTable12_3  ;; 0x43b0072c
        LDR      R1,[R1, #+0]
        CBNZ.N   R1,??POWER_FlagPORstatus_0
//  254   {
//  255     state = SUCCESS;
        MOVS     R0,#+1
//  256   }
//  257 #elif defined (USE_MDR1986VE3) || defined (USE_MDR1986VE1T)
//  258   if (( MDR_BKP->REG_0E & BKP_REG_0E_FPOR ) == BKP_REG_0E_FPOR) {
//  259 	  state = SUCCESS;
//  260   }
//  261 #endif
//  262   return state;
??POWER_FlagPORstatus_0:
        BX       LR               ;; return
//  263 }
//  264 
//  265 /**
//  266   * @brief  POWER_PVDenable - Enables or disables the Power Voltage Detectors (PVD, PVBD).
//  267   * @param  NewState: new state of the PVDs.
//  268   *   This parameter can be: ENABLE or DISABLE.
//  269   * @retval None
//  270   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  271 void POWER_PVDenable ( FunctionalState NewState )
//  272 {
//  273 	/* Check the parameters */
//  274 	assert_param(IS_FUNCTIONAL_STATE(NewState));
//  275 #if defined (USE_MDR1986VE9x)
//  276 	*(__IO uint32_t *) POWER_PVDEN_BB = (uint32_t) NewState;
POWER_PVDenable:
        LDR.N    R1,??DataTable12_4  ;; 0x42b00000
        STR      R0,[R1, #+0]
//  277 #elif defined (USE_MDR1986VE3) || defined (USE_MDR1986VE1T)
//  278 	if(NewState != DISABLE){
//  279 		MDR_POWER->PVDCS |= POWER_PVDCS_PVDEN;
//  280 	}
//  281 	else {
//  282 		MDR_POWER->PVDCS &= ~POWER_PVDCS_PVDEN;
//  283 	}
//  284 #endif
//  285 }
        BX       LR               ;; return
//  286 
//  287 /**
//  288   * @brief  POWER_GetFlagStatus - Checks whether the specified
//  289   * POWER detection flag is set or not.
//  290   * @param  POWER_FLAG: specifies the flag to check.
//  291   *   This parameter can be one of the following values:
//  292   *     @arg POWER_FLAG_PVD: PVD Output
//  293   *     @arg POWER_FLAG_PVBD: PVBD Output
//  294   * @retval The new state of POWER_FLAG (SET or RESET).
//  295   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  296 FlagStatus POWER_GetFlagStatus(uint32_t POWER_FLAG)
//  297 {
//  298   FlagStatus status;
//  299   /* Check the parameters */
//  300   assert_param(IS_POWER_FLAG(POWER_FLAG));
//  301 
//  302   if ((MDR_POWER->PVDCS & POWER_FLAG) != (uint32_t)RESET)
POWER_GetFlagStatus:
        LDR.N    R1,??DataTable12  ;; 0x40058000
        LDR      R1,[R1, #+0]
        ANDS     R0,R0,R1
        IT       NE 
        MOVNE    R0,#+1
//  303   {
//  304     status = SET;
//  305   }
//  306   else
//  307   {
//  308     status = RESET;
//  309   }
//  310   /* Return the flag status */
//  311   return status;
        UXTB     R0,R0
        BX       LR               ;; return
//  312 }
//  313 
//  314 /**
//  315   * @brief  POWER_ClearFlag - Clears the POWER's pending flags.
//  316   * @param  POWER_FLAG: specifies the flag to clear.
//  317   *   This parameter can be one of the following values:
//  318   *     @arg POWER_FLAG_PVD: Power voltage detection flag
//  319   *     @arg POWER_FLAG_PVBD: Battery voltage detection flag
//  320   * @retval None
//  321   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  322 void POWER_ClearFlag(uint32_t POWER_FLAG)
//  323 {
//  324   /* Check the parameters */
//  325   assert_param(IS_POWER_FLAG(POWER_FLAG));
//  326 
//  327   MDR_POWER->PVDCS &= (uint32_t) ~POWER_FLAG;
POWER_ClearFlag:
        LDR.N    R1,??DataTable12  ;; 0x40058000
        LDR      R2,[R1, #+0]
        BIC      R0,R2,R0
        STR      R0,[R1, #+0]
//  328 }
        BX       LR               ;; return
//  329 
//  330 /**
//  331   * @brief  POWER_PVD_ITconfig - Enables or disables the specified POWER interrupts.
//  332   * @param  POWER_IT: specifies the PVD interrupts sources to be enabled or disabled.
//  333   *   This parameter can be any combination of the following values:
//  334   *     @arg  POWER_PVD_IT:  PVD interrupt enable
//  335   *     @arg  POWER_PVBD_IT:  PVBD interrupt enable
//  336   * @param  NewState: new state of the specified POWER interrupts.
//  337   *   This parameter can be: ENABLE or DISABLE.
//  338   * @retval None
//  339   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  340 void POWER_PVD_ITconfig(uint32_t POWER_IT, FunctionalState NewState)
//  341 {
//  342   /* Check the parameters */
//  343   assert_param(IS_POWER_PVD_IT(POWER_IT));
//  344   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  345 
//  346   if (NewState != DISABLE)
POWER_PVD_ITconfig:
        LDR.N    R2,??DataTable12  ;; 0x40058000
        CMP      R1,#+0
        LDR      R1,[R2, #+0]
        ITE      NE 
        ORRNE    R0,R0,R1
        BICEQ    R0,R1,R0
//  347   {
//  348     MDR_POWER->PVDCS |= POWER_IT;
//  349   }
//  350   else
//  351   {
//  352     MDR_POWER->PVDCS &= (uint32_t)~POWER_IT;
        STR      R0,[R2, #+0]
//  353   }
//  354 }
        BX       LR               ;; return
//  355 
//  356 /**
//  357   * @brief  POWER_PVD_INVconfig - Enables or disables inversion of the
//  358   * specified POWER voltage detection flags
//  359   * @param  POWER_INV: specifies the PVD interrupts sources to be enabled or disabled.
//  360   *   This parameter can be any combination of the following values:
//  361   *     @arg  POWER_PVD_INV: PVD inversion enable
//  362   *     @arg  POWER_PVBD_INV: PVBD inversion enable
//  363   * @param  NewState: new state of the specified POWER voltage flag inversion.
//  364   *   This parameter can be: ENABLE or DISABLE.
//  365   * @retval None
//  366   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  367 void POWER_PVD_INVconfig(uint32_t POWER_INV, FunctionalState NewState)
//  368 {
//  369   /* Check the parameters */
//  370   assert_param(IS_POWER_PVD_INV(POWER_INV));
//  371   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  372 
//  373   if (NewState != DISABLE)
POWER_PVD_INVconfig:
        LDR.N    R2,??DataTable12  ;; 0x40058000
        CMP      R1,#+0
        LDR      R1,[R2, #+0]
        ITE      NE 
        ORRNE    R0,R0,R1
        BICEQ    R0,R1,R0
//  374   {
//  375     MDR_POWER->PVDCS |= POWER_INV;
//  376   }
//  377   else
//  378   {
//  379     MDR_POWER->PVDCS &= (uint32_t)~POWER_INV;
        STR      R0,[R2, #+0]
//  380   }
//  381 }
        BX       LR               ;; return
//  382 #if defined (USE_MDR1986VE9x)
//  383 /**
//  384   * @brief  Enters STOP mode.
//  385   * @param  POWER_Regulator_state: specifies the regulator state in STOP mode.
//  386   *   This parameter can be: ENABLE or DISABLE.
//  387   *     @arg ENABLE: STOP mode with regulator ON
//  388   *     @arg DISABLE: STOP mode with regulator in low power mode
//  389   * @param  POWER_STOPentry: specifies if STOP mode in entered with WFI or WFE instruction.
//  390   *   This parameter can be one of the following values:
//  391   *     @arg POWER_STOPentry_WFI: enter STOP mode with WFI instruction
//  392   *     @arg POWER_STOPentry_WFE: enter STOP mode with WFE instruction
//  393   * @retval None
//  394   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  395 void POWER_EnterSTOPMode(FunctionalState POWER_Regulator_state, uint8_t POWER_STOPentry)
//  396 {
//  397   /* Check the parameters */
//  398   assert_param(IS_FUNCTIONAL_STATE(POWER_Regulator_state));
//  399   assert_param(IS_POWER_STOP_ENTRY(POWER_STOPentry));
//  400 
//  401   /* Set UDcc stanby status */
//  402 
//  403    *(__IO uint32_t *) BKP_STANDBY_BB = (uint32_t) (!POWER_Regulator_state);
POWER_EnterSTOPMode:
        SUBS     R2,R0,#+1
        SBCS     R2,R2,R2
        LSRS     R2,R2,#+31
        LDR.N    R3,??DataTable12_2  ;; 0x43b007f8
        STR      R2,[R3, #+0]
//  404    /* Set SLEEPDEEP bit of Cortex System Control Register */
//  405    *(__IO uint32_t *) SCB -> SCR |= SCB_SCR_SLEEPDEEP_Msk;
        LDR.N    R2,??DataTable12_5  ;; 0xe000ed10
        LDR      R2,[R2, #+0]
        LDR      R3,[R2, #+0]
        ORR      R3,R3,#0x4
        STR      R3,[R2, #+0]
//  406 
//  407    if(POWER_Regulator_state == ENABLE){
        LDR.N    R2,??DataTable12_6  ;; 0x400d803c
        CMP      R0,#+1
        LDR      R0,[R2, #+0]
        ITE      EQ 
        BICEQ    R0,R0,#0x40000000
        ORRNE    R0,R0,#0x40000000
//  408 	   MDR_BKP->REG_0F &= ~BKP_REG_0F_STANDBY;
//  409    }
//  410    else{
//  411 	   MDR_BKP->REG_0F |= BKP_REG_0F_STANDBY;
        STR      R0,[R2, #+0]
//  412    }
//  413   /* Select STOP mode entry --------------------------------------------------*/
//  414   if(POWER_STOPentry == POWER_STOPentry_WFI)
        CMP      R1,#+1
        BNE.N    ??POWER_EnterSTOPMode_0
//  415   {
//  416     /* Request Wait For Interrupt */
//  417     __WFI();
        WFI      
        BX       LR
//  418   }
//  419   else
//  420   {
//  421     /* Request Wait For Event */
//  422     __WFE();
??POWER_EnterSTOPMode_0:
        WFE      
//  423   }
//  424 }
        BX       LR               ;; return
//  425 #elif defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE3)
//  426 
//  427 /**
//  428   * @brief	Shifting core controller into a low power consumption. In this mode,
//  429   * 		the clock frequency is applied only to the selected peripheral
//  430   * 		blocks, which interrupt the supply resumes clock on the core.
//  431   * @param	None
//  432   * @retval None
//  433   */
//  434 void POWER_EnterSLEEPMode(void)
//  435 {
//  436 	/* Enter in SLEEP mode */
//  437 	MDR_RST_CLK->ETH_CLOCK |= 1 << RST_CLK_ETH_CLOCK_SLEEP_Pos;
//  438 }
//  439 
//  440 #endif
//  441 
//  442 /**
//  443   * @brief  Enters STANDBY mode.
//  444   * @param  None
//  445   * @retval None
//  446   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  447 void POWER_EnterSTANDBYMode ( void )
//  448 {
//  449 	/* Select STANDBY mode */
//  450 #if defined (USE_MDR1986VE9x)
//  451 	*(__IO uint32_t *) BKP_STANDBY_BB = (uint32_t) 0x01;
POWER_EnterSTANDBYMode:
        LDR.N    R0,??DataTable12_2  ;; 0x43b007f8
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  452 	/* Set SLEEPDEEP bit of Cortex System Control Register */
//  453 	*(__IO uint32_t *) SCB->SCR |= SCB_SCR_SLEEPDEEP_Msk;
        LDR.N    R0,??DataTable12_5  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0x4
        STR      R1,[R0, #+0]
//  454 #elif defined (USE_MDR1986VE3) || defined (USE_MDR1986VE1T)
//  455 	MDR_BKP->REG_0F |= BKP_REG_0F_STANDBY;
//  456 #endif
//  457 	/* Request Wait For Interrupt */
//  458 	__WFI();
        WFI      
//  459 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     0x40058000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     0x400d8038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     0x43b007f8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     0x43b0072c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     0x42b00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     0xe000ed10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     0x400d803c

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  460 
//  461 #if defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE3)
//  462 
//  463 /**
//  464  * @brief	POWER_SetTrim - Adjustment coefficient of the reference voltage
//  465  * 			integrated voltage regulator DUcc roughly.
//  466  * @param 	trim: coefficient of the reference voltage.
//  467  * 			This parameter can be one the following values:
//  468  * 				@arg POWER_TRIM_1_8_V
//  469  * 				@arg POWER_TRIM_1_6_V
//  470  * 				@arg POWER_TRIM_1_4_V
//  471  * @return	None.
//  472  */
//  473 void POWER_SetTrim(uint32_t trim)
//  474 {
//  475 	uint32_t tmpreg;
//  476 	/* Check the parameters */
//  477 	assert_param(IS_POWER_TRIM(trim));
//  478 
//  479 	tmpreg = MDR_BKP->REG_0E & (~(3 << BKP_REG_0E_TRIM_34_Pos));
//  480 	tmpreg = tmpreg | trim;
//  481 	MDR_BKP->REG_0E = tmpreg;
//  482 }
//  483 
//  484 #endif
//  485 
//  486 /** @} */ /* End of group POWER_Private_Functions */
//  487 
//  488 /** @} */ /* End of group POWER */
//  489 
//  490 /** @} */ /* End of group __MDR32F9Qx_StdPeriph_Driver */
//  491 
//  492 /******************* (C) COPYRIGHT 2011 Phyton *********************************
//  493 *
//  494 * END OF FILE MDR32F9Qx_power.c */
// 
// 266 bytes in section .text
// 
// 266 bytes of CODE memory
//
//Errors: none
//Warnings: 2
