  /**
  @page WWDG_Use_GetStatus_1T WWDG_Use_GetStatus for MDR1986VE1T Opora Evaluation Board
  @latexonly
  @verbatim
  ******************** (C) COPYRIGHT 2013 Milandr ***********************************
  * @file    Examples/MDR1986VE1T_EVAL/WWDG/Use_GetStatus/readme.txt
  * @author Milandr Application Team
  * @version V1.0.0
  * @date    4/07/2013
  * @brief   Description of the WWDG Example.
  ******************************************************************************
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, MILANDR SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  ******************************************************************************
  @endverbatim
  @endlatexonly
@par Example Description

This example shows how to use WWDG module functions.
That action includes the following steps:
  - WWDG module initialization;
  - Check whether the EWI flag is set or not;
  - EWI flag clearing;
  - Counter value setting.

LED1 is used to indicate the EWI flag state.

@par Directory "Examples/MDR1986VE1T_EVAL" contains:

  - MDR32F9Qx_config.h                    Library Configuration file
  - MDR32F9Qx_board.h                     Evaluation board Configuration file
  - WWDG/Use_GetStatus/main.c             Main program

@par Hardware and Software environment:

  - This example is intended to run on MDR1986VE1T eval board with MDR1986VE1T microcontroller.
  - VD7 (LED1) are connected to PD.7 pin.

@par How to use.

To launch the example, you must do the following:
  - Create a project and setup all project configurations.
  - Add main.c file.
  - Add the required files from "Libraries" folder:
        MDR32F9Qx_port.c
        MDR32F9Qx_rst_clk.c
        MDR32F9Qx_wwdg.c
  - Edit the MDR32F9Qx_config.h to set appropriate run-time parameter checking level.
  - Compile and link together all .c files and load your image into the target board.
  - Run the example.

 * <h3><center>&copy; COPYRIGHT 2013 Milandr</center></h3>
 */
