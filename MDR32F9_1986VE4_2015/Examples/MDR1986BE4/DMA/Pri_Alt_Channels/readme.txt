  /**
  @page Pri_Alt_Channels Pri_Alt_Channels for MDR1986BE4 evaluation board
  @latexonly
  @verbatim
  ******************** (C) COPYRIGHT 2014 Milandr ***********************************
  * @file    Examples/MDR1986BE4_EVAL/DMA/Pri_Alt_Channels/readme.txt
  * @author Milandr Application Team
  * @version V1.0.0
  * @date    4/07/2014
  * @brief   Description of the Pri_Alt_Channels Example.
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

This example shows how to use DMA.
- Primary Control Data Structure initialization
- Alternate Control Data Structure initialization
- DMA channel initialization
- Run DMA channel
- Check DMA channel status
- Check the corectness of written data

@par  Directory "Examples/MDR1986BE4_EVAL" contains:

  - MDR32F9Qx_config.h            Library Configuration file
  - MDR32F9Qx_board.h             Evaluation board Configuration file
  - DMA/Pri_Alt_Channels/main.c   Main program

@par  Hardware and Software environment:

  - This example is intended to run on MDR1986BE4 eval board with MDR1986BE4 microcontroller.

@par  How to use

 To launch the example, you must do the following:
  - Create a project and setup all project configurations.
  - Add main.c file.
  - Add the required files from "Libraries" folder:
        MDR32F9Qx_rst_clk.c
        MDR32F9Qx_dma.c
  - Edit the MDR32F9Qx_config.h to set appropriate run-time parameter checking level.
  - Compile and link together all .c files and load your image into the target board.
  - Run the example.

 * <h3><center>&copy; COPYRIGHT 2014 Milandr</center></h3>
 */
