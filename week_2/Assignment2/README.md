# Week2_session2
<details>
<summary>Learnings</summary>
 In this session the RISC-HDP cohort was introduced to the chipcron tool developed by the trainer of the course Mayank Kabra
 This tool is a an automatic RISCV core generator tool which spits out synthesizable RTL for a RISC core based on the specification provided by the user Core's specification 
 depends on the application for which the RISCV core needs to be created. The tool also generates a verilog testbench to test the core 
 This session's task for each member of the cohort is to identify an IoT application for which they would like to generate a RISC core using the ChipCron tool
</details>
<details> <summary> Chipcron tool </summary>
1. The interface -  Tool provides a script based interface to the user where the user can modify a json file to specify their RISC-V core. 
 Fields in the json file are self explainatory ..e.g. Alu_dist actually indicates the number of pipeline stages needed.
 The idea is to choose the parameters wisely and fully based on the exact needs of the application program. For example if the code only has 50 instructions then a small 
 instruction memory will be sufficient and PC size of 6 bits can cater to the needs of the program. Similarly we can choose what all instructions our code needs and only implement those instructions in the microarchitecture of our core 
    <img width="563" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/0f569ef3-4a79-4149-8069-6d1078364049">
2. Steps to use the tool
   

</details>
<details> 
  <summary> My IoT project </summary>
  Still thinking about it. 
  
</details>
