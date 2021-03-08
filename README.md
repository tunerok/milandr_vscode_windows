A project prepared for working with the Milandr board via vscode (windows version). The project is generated in cubemx to work with a makefile.   
A similar project can be assembled for any device from Milandr. Here are just the main steps and an example.  

A small code has been added to the library files that defines some variables depending on the compiler used (in particular the DMA). A startup folder for the GCC compiler has been added. New versions of the library do not have such a folder. Added the MDR32F9Qx_board.h file, which is registered in the library dependencies. The chip is selected in this file.



Installation of the following programs is required:  
System:  
* [GNU ARM toolchain](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm)  
* [GNU make](http://gnuwin32.sourceforge.net/packages/make.htm)  
> Do not forget add **GnuWin32\bin** folder to PATH envirovement  

VS Code:  
* [Cortex-Debug](https://marketplace.visualstudio.com/items?itemName=marus25.cortex-debug) extention  
* For correct work of intellisense and getting includes from the [makefile](https://marketplace.visualstudio.com/items?itemName=ms-vscode.makefile-tools)  
  
SLP-files and .SVD-files can be found [here](https://ic.milandr.ru/soft/) or [here](https://github.com/eldarkg/emdr1986x-std-per-lib)
  
*Optional*   
For JLink GDB  
For the jlink debugger you need to add a couple of lines.   
One, two, three clicks.  
![image](https://user-images.githubusercontent.com/20516589/110114948-6e275480-7dc6-11eb-9975-f1d0a09b7d75.png)  
![image](https://user-images.githubusercontent.com/20516589/110117056-6ae19800-7dc9-11eb-8a09-47998dbcb1b8.png)  

```
"cortex-debug.JLinkGDBServerPath": "<YOUR PATH>\\JLinkGDBServerCL.exe",
```
  
You can found more information [about jLink-vscode integration](https://wiki.segger.com/J-Link_Visual_Studio_Code)  


