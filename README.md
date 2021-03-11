Протестировано с отладочным комплектом для 1986BE92У


Проект подготовлен для работы с отладочной платой Milandr 1986BE92 через VSCode (версия для Windows).
Подобный проект можно собрать для нескольких устройств от Milandr. Проделаны основные шаги и дан пример.

В файлы библиотеки был добавлен небольшой код, который определяет некоторые переменные в зависимости от используемого компилятора (в частности, DMA). Добавлена папка автозагрузки для компилятора GCC. В новых версиях библиотеки такой папки нет. Добавлен файл MDR32F9Qx_board.h, который прописан в зависимостях библиотеки. Чип выбирается в этом файле (если у вас другой чип, не забудъте внести изменения во все зависимые файлы, которые используются для сборки - включая изменение областей доступной памяти в .jlink-файлах и в линковщике .ld). Чтобы при отладке видеть содержимое регистров контроллера, были подправлены SVD файлы.



Требуется установка следующих программ:
Система:
* [Набор инструментов GNU ARM](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm)
* [GNU make](http://gnuwin32.sourceforge.net/packages/make.htm)
> Не забудьте добавить папку **GnuWin32\bin** в среду PATH

Код VS:
* [Cortex-Debug](https://marketplace.visualstudio.com/items?itemName=marus25.cortex-debug) расширение
* Для корректной работы IntelliSense и определения .h файлов из [makefile](https://marketplace.visualstudio.com/items?itemName=ms-vscode.makefile-tools)
  
Самые последние SPL-файлы и .SVD-файлы можно найти [здесь](https://ic.milandr.ru/soft/) или [здесь](https://github.com/eldarkg/emdr1986x-std-per-lib). Они также приложены к данному репозиторию в директории MDR32F9_1986VE4_2015\IDE\keil\SVD. 

***

*Необязательно, но необходимо для запуска из "коробки"*

**Добавить информацию о MCU в j-link**

Для правильного определения типа контроллера вы можете добавить файлы .FLM (они также приложены в MDR32F9_1986VE4_2015\Flash) в папку j-link [HOWTO](https://startmilandr.ru/doku.php/prog:start:j-flash) или посмотрите здесь (\info_backup), если ссылка недоступна.


**Для JLink GDB**

Для отладчика jlink нужно добавить пару строк.
Один, два, три клика.
![image](https://user-images.githubusercontent.com/20516589/110114948-6e275480-7dc6-11eb-9975-f1d0a09b7d75.png)
![image](https://user-images.githubusercontent.com/20516589/110117056-6ae19800-7dc9-11eb-8a09-47998dbcb1b8.png)

``
"cortex-debug.JLinkGDBServerPath": "<ВАШ ПУТЬ>\\JLinkGDBServerCL.exe",
``
  
Вы можете найти дополнительную информацию [об интеграции jLink-vscode](https://wiki.segger.com/J-Link_Visual_Studio_Code)



***

Tested at 1986BE92  


A project prepared for working with the Milandr board via vscode (windows version).
A similar project can be assembled for a couple of devices from Milandr. Here are just the main steps and an example.  

A small code has been added to the library files that defines some variables depending on the compiler used (in particular the DMA). A startup folder for the GCC compiler has been added. New versions of the library do not have such a folder. Added the MDR32F9Qx_board.h file, which is registered in the library dependencies. The chip is selected in this file. To see the contents of the controller registers during debugging, the SVD files were corrected.



Installation of the following programs is required:  
System:  
* [GNU ARM toolchain](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm)  
* [GNU make](http://gnuwin32.sourceforge.net/packages/make.htm)  
> Do not forget add **GnuWin32\bin** folder to PATH envirovement  

VS Code:  
* [Cortex-Debug](https://marketplace.visualstudio.com/items?itemName=marus25.cortex-debug) extention  
* For correct work of IntelliSense and getting includes from the [makefile](https://marketplace.visualstudio.com/items?itemName=ms-vscode.makefile-tools)  
  
SPL-files and .SVD-files can be found [here](https://ic.milandr.ru/soft/) or [here](https://github.com/eldarkg/emdr1986x-std-per-lib)

***

*Optional*

**Add info about MCU to j-link**

For the correct definition of the controller type, you can add .FLM files to the j-link folder [HOWTO](https://startmilandr.ru/doku.php/prog:start:j-flash) or [look here if link unavailable](https://github.com/tunerok/milandr_vscode_windows/info_backup/prog_start_j-flash.pdf)


**For JLink GDB** 

For the jlink debugger, you need to add a couple of lines.   
One, two, three clicks.  
![image](https://user-images.githubusercontent.com/20516589/110114948-6e275480-7dc6-11eb-9975-f1d0a09b7d75.png)  
![image](https://user-images.githubusercontent.com/20516589/110117056-6ae19800-7dc9-11eb-8a09-47998dbcb1b8.png)  

```
"cortex-debug.JLinkGDBServerPath": "<YOUR PATH>\\JLinkGDBServerCL.exe",
```
  
You can found more information [about jLink-vscode integration](https://wiki.segger.com/J-Link_Visual_Studio_Code)  


