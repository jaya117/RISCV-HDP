### Tasks completed in the final week 6- 

<details> <summary> Functional simulation of the processor design bypassing UART </summary>
1. Simulation of the motion_sensitive_led_bar specific RISC-V design bypassing UART mechanism of loading the program image in memory the memory. Following steps were performed to do this task.
   
   a. In processor.v make following change, writing_inst_done=1 

   <img width="253" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/f836726a-6ee3-42dc-a070-c328ace4b198">

   b. In testbench.v comment out the follwoing uart image loading and verification code

   <img width="287" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/167b4380-4005-4e04-a4e2-1293ab26c272">

   c. use following commands to compile and simulate the design
   iverilog -o led_bar_local_var_code_v testbench.v processor.v
   ./led_bar_local_var_code_v
</details>   
 <details> <summary> Optomization of application code and processor design </summary>
2. On investigating the waveform I found that it was taking a very long time for input pins to drive the desired result on output pins. So to improve performance time I optimized the inline assemly code and removed multiple function calls to reduce instruction and branches. Created the processor core again based on the optimized C application program to achieve quickest input to output transition. This lead to speed up of the response by more than 50%.
3. Updated the testbench to add more stimulus points , and observed the waveform to verify that the expected output was achieved
7. Analysed the waveform and inputs and outputs of varuious black box modules like ID pipeline , ALU etc

### Waveform with optimized assmebly code 

<img width="912" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/d382e9f2-3e3c-4003-845d-4247c13eba3d">

### waveforms with different stimulus points

<img width="786" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/2fec5d58-2001-4553-b2af-2fea99fe849f">

</details>

<details> <summary> Sythesis of the processor design </summary>

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
<details> <summary> Gate level simulation of the processor design with UART ON </summary>

1. Used following commands to compile the netlist version of processor.v and testbench

   iverilog -o gls testbench.v processor_netlist.v sky130_fd_sc_hd.v sky130_sram_1kbyte_1rw1r_32x256_8.v primitives.v

2. We had synthesized the processor.v file in ASIC format , so the final netlist doesn't support the provision of backdoor loading of the program image in instruction memory. So we will be using uart to load the program image in  instruction memory. Used following command to simulate

 ./gls   
 
 or 
 
 vpp gls

 3. uart verification output

    <img width="403" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/6e01a190-9493-4725-8732-7265088e1612">

    <img width="752" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/57b127bd-ccf2-44a7-ae4c-208c6e3710bf">

    <img width="789" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/ed113c4a-96bb-48af-b7e0-598740882794">


</details>

<details><summary>Gate Level Simulations of the processor design with UART Byapssed</summary>

   To simulate the design with UART bypassed , Following steps were done
 
   a. Convert the processor.v used for previous synthesis cycle to FPGA version , by setting 
       writing_inst_done=1
       
   b. Resynthesized processor.v and final netlist was saved as [processor_netlist_fpga.v] (.synthesis/processor_netlist_fpga.v)
   
   c. create a copy of sky130_sram_1kbyte_1rw1r_32x256_8.v as sky130_sram_1kbyte_1rw1r_32x256_8_inst.v
   
   d. Uncomment the initial begin block that intializaes the memory array and replace it with the initial begin block from memory behavioral model defined in processor.v for functional simulation. This 
updated memory behavioral file can be found here - [sky130_sram_1kbyte_1rw1r_32x256_8_inst.v](./synthesis/sky130_sram_1kbyte_1rw1r_32x256_8_inst.v)

  e. In processor_netlist_fpga.v , replace sky130_sram_1kbyte_1rw1r_32x256_8 inst_mem(  with 
     sky130_sram_1kbyte_1rw1r_32x256_8_inst inst_mem()
     [processor_netlist_fpga.v](./synthesis/processor_netlist_fpga.v)
     
  f.   recompile using following command 
   
    iverilog -o gls_fpga testbench.v processor_netlist.v sky130_fd_sc_hd.v sky130_sram_1kbyte_1rw1r_32x256_8.v sky130_sram_1kbyte_1rw1r_32x256_8_inst.v primitives.v
    
  g.  Simulate 
    
       ./gls_fpga

  e. Investigate waveform - 

     Wavefrom showed that the Gate Level simulation results matched with functional simulation results!
     !!!Yay!!!
     
<img width="803" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/d6d7e149-0950-405a-a199-dd0a8b494100">


<img width="794" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/eaa9e378-7939-4b0c-b816-2cb6e8168536">

   

</details>
