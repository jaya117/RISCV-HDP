In this week we create a Custom RISC-V core that will run our application bare metal program that was created last week using inline assembly code.

Before creating the RISC-V core , We spend some time understanding the final assmebly code generated by the RISC-V assembler. We understand how the integer variables are stored on stack and how the stack pointter progresses. Stack is the WB memory space for the program created in the data memory. This space is used to store variables, return address' of the function calls, function arguments

what does addi sp, sp,-32 indicate?

Like PC , SP also increments in +8 , so 32/8 =4 , above line shows that sp has moved 4 sp locations up. Each of this locations stores 8 bytes. 
Each integer is 32 bit or 4 bytes so this means each location of SP can two integer variables 
