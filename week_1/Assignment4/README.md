## Assignment #4 
Watch the First two days training recording of the RISCV-MYTH . The recording is available on vsdiat account 
### Learnings from the training 
#### RV Day1-
##### Day1 starts with understaning the Application to hardware flow . Goes on to understanding the RISCV Instruction set Architecture and how a programmer can access the RISCV ISA  in their C/C++/Java (or any other high level coding language) code. Followed by lab where a C code uses a RISCV instructions in a function call
<img width="626" alt="RISCV_ISA" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/429cc372-1006-4ca7-b23b-443a0f8257a6">

##### What happens when an end user invokes an application software like a web browser or a text editing application ? 
<img width="621" alt="flow2" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/23095fcc-7f3c-40e2-9f64-029876e58568">


##### The flow is - 
###### application software-> Operating system -> Compiler -> Assembler (HDL->synthesis->actual hardware in silicon->hardware assembly)->assembler output running on the assembled hardware
###### Output of the compiler that is the assembly code is dependent on the hardware's instruction set architecture(X86, ARM, RISCV, MIPS etc)
###### Focus on RISC-V ISA in this training

##### Example of a stop watch application going through various execution stages in the flow mentioned above
<img width="613" alt="stopwatch_app_flow" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/f6d4be91-7aee-4a8b-a853-1df4a336e3b5">


##### In this course we cover both software and the hardware flows . The first half is dedicated on learning RISC-ISA and second haf is focussed on implmenting the RISCV-ISA in hardware in HDL->verfification ->synthsis->final netlist
##### In first two days RV day1 and RV day2 the focus is on RISCV-ISA

<img width="610" alt="course_part" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/69b76385-e50f-4254-b796-b9e75c0b5ba7">

### Understanding RISC-ISA

#### How does the RISCV compiler output for a simple C program (for addition/Subtraction and multiplication/division) look like?

##### C program 
<img width="599" alt="c_prog1" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/fc444283-b924-49d4-a176-bf1fd28b07ef">

##### RISCV Compiler output
<img width="616" alt="asm_prog1" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/b6601d9a-3f18-49ba-868d-4a8c64e3aad7">

#### Now lets's disect and understand the compiler output (A.K.A assembly code)

##### Pseudo Instructions
<img width="662" alt="pseudo_inst" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/815c4bed-70af-495e-944e-a5538ad0e1ac">

##### Base Integer Instructions -RV64I
<img width="624" alt="base_int_inst_RV64I" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/2f8393ab-eece-44d0-a5e2-13208bf0f154">

##### Multiply Extension -RV64M
<img width="631" alt="multiply_inst_ext" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/6c8c15d8-ce72-4daa-8707-05a4c1652ac5">

##### Single and double precision floating point extensions RV64F , RV64D
<img width="647" alt="floating_pt_extn" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/e4a608ac-4e85-4e84-b399-c7528e0141ce">

##### ABI (Application binary interface) , nicknames of the RISCV registers that the programmers can use in their programs to call and use them in their C Program (Well that's pretty That's cool!!)
<img width="629" alt="abi" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/4569497a-9e15-4010-b9ee-2511550f9130">

##### Where are these instructions stores? and where do they store or read the data from (of course memory) . but how? well by using stack pointer and memory allocation 
<img width="646" alt="mem_alloc_sp" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/980f720e-0da8-4b57-bd4d-d8f8bab48980">

### LAB1
#### Write a simple C program that incrementally adds numbers 1 to 5 and prints the result. 
#### Compile it with RISCV-64 compiler and study the compiler output to get an understanding of Base Integer Instructions aka RV64I
#### I wrote and compiled the program with default gcc compiler and here is the screenshot 
<img width="407" alt="sum1ton" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/2ece5a44-64ba-4013-be56-06af831a8449">

#### Then I recompiled the same program using 64 bit RISCV compiler , using following command 
##### riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c
##### To see the output assembly code use following command 
##### riscv64-unknown-elf-objdump -d sum1ton.o | less 
#### Screen shot of the result
<img width="494" alt="sum1ton_obj_dump" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/22b33b12-8ea6-462a-890f-9e6775ee4725">

##### Left most column of numbers in above screenshot shows the byte address locations (incrementing in 4 bytes) to show the memeory location where the instructions are stored in the memory 

##### If the program was compiled using the option (-01) instead of (-Ofast) then it will have more number of instructions , so option "-Ofast" provides optimized code 

##### To run the object file generated after compiling the code in RISCV compiler is 
##### spike pk sum1ton.o
##### following screenshot is the result of running above command
<img width="380" alt="riscv_obj_file_execution" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/152d8bda-7fc3-4a40-8c64-a88f55a8c35b">

##### So what is spike
##### Spike is debugger , it can be invoked to debug an assembly code , just like any high level language debugger. We can add break points in the terms of memory address  printed in the left most coloumn of the ASM code 
##### At this moment our assembly code looks like this -
<img width="578" alt="asm_code_for_spike" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/4fb9e023-e573-4e31-880c-d9c6bdd9dd20">

##### Lets say we want to check the content of the RISCV registers at the time when main() is invoked.
##### That is what is the content of rehister a2 whem main is called , to answer this question we need to invoke the debugger 
##### Command to invoke spike debugger 
##### spike -d pk sum1ton.o
##### until pc 0 100b0
##### reg 0 a2
<img width="635" alt="spike_debugger1" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/c7c072d7-809a-4c06-8da6-e79fe5816ad5">

##### Now that we have seen the content of a2 before execution of the instruction at 100b0 , we press enter so the instruction "lui a2,0x1 " gets executed.
##### Once again we check the value of a2 like above , and we see following result 
<img width="280" alt="spike_debugger2" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/411619ff-9b99-4d04-93bc-4721734c0bc0">

##### in above screen shot a2 is shown to contain value 0x0001000 instead of expected 0x0000001...We may ask why?
##### The answer is explained in the screen shot below. A2 is a 32 bit register , but when it is used with instruction "lui" (load upper immidiate) then only upper bits [31:12] of register are filled with data and remaining can be used for meta information . Had we used the instruction "li" (load immidiate) we could have used all 32 bits of the register to store the data 
<img width="607" alt="32_bit_reg_fields" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/032dfad1-7ae2-49d9-9602-22e1e2c1f90e">

##### Now we can press enter to execute next instruction annd use the same command  reg <core> <reg name> to find the content of register after execution of the instruction 






















