### Tasks done this week- 

1. Simulation of the motion_sensitive_led_bar specific RISC-V design bypassing UART mechanism of loading the program image in memory the memory. Following steps were performed to do this task.
   
   a. In processor.v make following change, writing_inst_done=1 

   <img width="253" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/f836726a-6ee3-42dc-a070-c328ace4b198">

   b. In testbench.v comment out the follwoing uart image loading and verification code

   <img width="287" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/167b4380-4005-4e04-a4e2-1293ab26c272">

   c. use following commands to compile and simulate the design
   iverilog -o led_bar_local_var_code_v testbench.v processor.v
   ./led_bar_local_var_code_v
   
2. On investigating the waveform I found that it was taking a very long time for input pins to drive the desired result on output pins. So to improve performance time I optimized the inline assemly code and removed multiple function calls to reduce instruction and branches. Created the processor core again based on the optimized C application program to achieve quickest input to output transition. This lead to speed up of the response by more than 50%.
3. Updated the testbench to add more stimulus points , and observed the waveform to verify that the expected output was achieved
7. Analysed the waveform and inputs and outputs of varuious black box modules like ID pipeline , ALU etc

Waveform with optimized assmebly code 

<img width="912" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/d382e9f2-3e3c-4003-845d-4247c13eba3d">

waveforms with different stimulus points

<img width="786" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/2fec5d58-2001-4553-b2af-2fea99fe849f">


