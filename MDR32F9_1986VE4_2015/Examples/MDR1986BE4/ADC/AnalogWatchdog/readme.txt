  /**
  @page ADC_AnalogWatchdog ADC_AnalogWatchdog for MDR1986BE4 evaluation board
  @latexonly
  @verbatim
  ******************** (C) COPYRIGHT 2014 Milandr ***********************************
  * @file    Examples/MDR1986BE4_EVAL/ADC/Analog_Watchdog/readme.txt
  * @author  Milandr Application Team
  * @version V1.0.0
  * @date    12/09/2014
  * @brief   Description of the ADC Example.
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

This example describes how to use the ADC analog watchdog to guard continuously
an ADC channel. The ADC1 is configured to convert continuously ADC channel 7.
The analog watchdog is configured and enabled to guard a single regular channel.
Each time the channel 7 converted value exceed programmed analog watchdog high
threshold (value 0x0900) or goes down analog watchdog low threshold (value 0x0800)
an AWD interrupt is generated and the LED shows "-1".
The "-1" will be shows as long as the AWD interrupt is generated which means
that the converted value of regular ADC channel 7 is outside the range limited by high
and low analog watchdog thresholds.
The "1" will be shows bas long as the converted value of regular ADC channel 7 is  above the upper limit.
Regular ADC channel 7 connected to the trim resistor.

@par Directory "Examples/MDR1986BE4_EVAL" contains:

  - MDR32F9Qx_config.h                      Library Configuration file
  - MDR32F9Qx_board.h                       Evaluation board Configuration file
  - ADC/Analog_Watchdog/main.c              Main program
  - ADC/Analog_Watchdog/MDR32F9Qx_it.c      Main Interrupt Service Routines
  - ADC/Analog_Watchdog/MDR32F9Qx_it.h      Functions prototypes for the interrupt
  - ADC/Analog_Watchdog/MT_107_MELT.c       Functions for the control LED 
  - ADC/Analog_Watchdog/MT_107_MELT.h       Functions prototypes for the LED control

@par Hardware and Software environment:

  - This example is intended to run on MDR1986BE4 eval board with MDR1986BE4 microcontroller.

@par How to use.

To launch the example, you must do the following:
  - Create a project and setup all project configurations.
  - Add main.c         file.
  - Add MDR32F9Qx_it.c file.
  - Add MT_107_MELT.c  file.
  - Add the required files from "Libraries" folder:
        MDR32F9Qx_port.c
        MDR32F9Qx_rst_clk.c
	    MDR32F9Qx_adc.c
  - Edit the MDR32F9Qx_config.h to set appropriate run-time parameter checking level.
  - Compile and link together all .c files and load your image into the target board.
  - Run the example.

 * <h3><center>&copy; COPYRIGHT 2014 Milandr</center></h3>
 */
