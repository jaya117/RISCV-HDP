This week's task is to add inline assembly code to create bare metal C application for 
motion controlled LED light bar, compile it using riscv32 compiler and generate asm text file. 
I have created two versions of assmebly code , the first version is without using RISC-v compiler optimizations  and the second version is using -Ofast compiler switch which results in a little less number of instructions.

Application C code with inline assembly - 

Full Assembly code for application  without compiler optimization - 

Full Assembly code for application with compiler optimization - 

