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















