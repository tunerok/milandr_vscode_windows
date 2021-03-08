  /**
  @page Code_in_RAM_3T Code_in_RAM for MDR1986VE3 Complexity Evaluation Board
  @latexonly
  @verbatim
  ******************** (C) COPYRIGHT 2013 Milandr ***********************************
  * @file    Examples/MDR1986VE3/EEPROM/Code_in_RAM/readme.txt
  * @author Milandr Application Team
  * @version V1.0.0
  * @date    16/06/2013
  * @brief   Description of the EEPROM Example.
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

This example shows how to use EEPROM.
- Erase main memory page 0
- Word programm main memory page 0
- Full erase information memory
- Word programm information memory

@par Directory "Examples/MDR1986VE3" contains:

  - MDR32F9Qx_config.h                     Library Configuration file
  - MDR32F9Qx_board.h                      Evaluation board Configuration file
  - EEPROM/Code_in_RAM/main.c              Main program

@par Hardware and Software environment:

  - This example is intended to run on MDR1986VE3 eval board with MDR1986VE3 microcontroller.
  - VD1 (LED1), VD2 (LED2), VD3 (LED3), VD4 (LED4) are connected to PB.0, PB.1, PB.2, PB.3 pins, respectively.

@par How to use.

To launch the example, you must do the following:
  - Create a project and setup all project configurations.
  - Add main.c file.
  - Add the required files from "Library" folder:
        MDR32F9Qx_port.c
        MDR32F9Qx_rst_clk.c
	      MDR32F9Qx_eeprom.c
  - Edit the MDR32F9Qx_conf.h to set appropriate run-time parameter checking level.
  - Compile and link together all .c files and load your image into the target board.
  - Run the example.

 * <h3><center>&copy; COPYRIGHT 2013 Milandr</center></h3>
 */
