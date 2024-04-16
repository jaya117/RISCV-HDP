### Tasks done this week- 

<details> <summary> Simulating the design with bypassing UART </summary>
1. Simulation of the motion_sensitive_led_bar specific RISC-V design bypassing UART mechanism of loading the program image in memory the memory. Following steps were performed to do this task.
   
   a. In processor.v make following change, writing_inst_done=1 

   <img width="253" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/f836726a-6ee3-42dc-a070-c328ace4b198">

   b. In testbench.v comment out the follwoing uart image loading and verification code

   <img width="287" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/167b4380-4005-4e04-a4e2-1293ab26c272">

   c. use following commands to compile and simulate the design
   iverilog -o led_bar_local_var_code_v testbench.v processor.v
   ./led_bar_local_var_code_v
</details>   
 <details> <summary> Optomization of the design </summary>
2. On investigating the waveform I found that it was taking a very long time for input pins to drive the desired result on output pins. So to improve performance time I optimized the inline assemly code and removed multiple function calls to reduce instruction and branches. Created the processor core again based on the optimized C application program to achieve quickest input to output transition. This lead to speed up of the response by more than 50%.
3. Updated the testbench to add more stimulus points , and observed the waveform to verify that the expected output was achieved
7. Analysed the waveform and inputs and outputs of varuious black box modules like ID pipeline , ALU etc

### Waveform with optimized assmebly code 

<img width="912" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/d382e9f2-3e3c-4003-845d-4247c13eba3d">

### waveforms with different stimulus points

<img width="786" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/2fec5d58-2001-4553-b2af-2fea99fe849f">

</details>

<details> <summary> Sythesis of the  design </summary>

   1. Design synthesis is done using open source yosys tool
   2. Inatlled latest version of yosys tool using following commands
      
      sudo apt install build-essential clang bison flex libreadline-dev \
    gawk tcl-dev libffi-dev git graphviz \
    xdot pkg-config python python3 libftdi-dev \
    qt5-default python3-dev libboost-all-dev cmake libeigen3-dev

     git clone https://github.com/YosysHQ/yosys yosys
     cd yosys
     make -j$(nproc)
     sudo make install

  3. Performed following steps to synthesize RTL
     The RTL model processor.v that was used for functional verification and simulation has behavioral models of the instruction and data memory. Which are represented as - sky130_sram_2kbyte_1rw1r_32x256_8_inst and sky130_sram_2kbyte_1rw1r_32x256_8_data . we needed seperate behavioral models of the instrcution and data memory in order to do certain  functional verification friendly things like - 
Preloading the program image into the instruction memory array and thereby bypassing the tedious step of loading program instruction in memory via UART during the function simulation. 

2) These behavioral memory models are not synthesizable , so when preparing the design for synthesis , we need to comment out the RTL modules containing definitions of these behavioral model.

And their names at the time of instantiation in the design also need to be replace by already synthesized blabk box memory model provided by sky130 foundary. To do this in the current design we just need to replace  sky130_sram_2kbyte_1rw1r_32x256_8_inst and sky130_sram_2kbyte_1rw1r_32x256_8_data with sky130_sram_1kbyte_1rw1r_32x256_8. 

3) Next step is to convert this rtl into ASIC version , for that set writing_inst_done=0 in processor.v

4) Copied following sky130 libraries, processor.v and testbench.v to the same directory
   sky130_fd_sc_hd__tt_025C_1v80_256.lib
   sky130_fd_sc_hd.v
   primitives.v
   sky130_sram_1kbyte_1rw1r_32x256_8.v
   
6)  Used following yosys commands to synthesize the design
   a. cd to the directory where design and sky130 liberary files are located

    b. launch yosys

         yosys

    c. on yosys prompt

        read_liberty -lib sky130_fd_sc_hd__tt_025C_1v80_256.lib

    d. read verilog file

        read_verilog processor.v

    e. synthesize

        synth -top wrapper

    f.  write output verilog

        write_verilog test_output.v

    g.  map the syhthesized logic cells in test_output file to standard liberary cells

        abc -liberty sky130_fd_sc_hd__tt_025C_1v80_256.lib

    h. map the syhthesized flip flops cells in the test_output file to the standard liberary

        dfflibmap -liberty sky130_fd_sc_hd__tt_025C_1v80_256.lib

    i. write the final netlist

       write_verilog processor_netlist.v

    All Synthesis related files can be found  here

    [synthesis](./synthesis)
     
</details>
<details> <summary> Gate level simulation with UART ON </summary></details>
<details><summary>Gate Level Simulations with UART Byapssed</summary></details>
