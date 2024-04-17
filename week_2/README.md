### RISC-V HDP Week_2 Learnings 

<details><summary> Measuring the CPU perfomance </summary>
<img width="617" alt="topics" src="https://github.com/jaya117/gitlearn_new/assets/139655462/7b67e0a0-a2fa-4005-a9f4-92d0c7833ae8">

#### How fast is your processor? How is CPU performance measured?

##### CPU exexcution time  Vs CPU  response time 
<img width="607" alt="faster_computer" src="https://github.com/jaya117/gitlearn_new/assets/139655462/d5c298fa-8132-484b-9caa-7baec4ebd916">

###### OS is manager of the computer's resources, so it adds overhead to the actual user code 
###### effective length of the code = raw user code + overhead added by OS
###### CPU performance is measure by benchmarks by measuring the the time teaken by the CPU to execute the raw user code. This time is called the execution time of the CPU.

<img width="614" alt="raw_program_performance" src="https://github.com/jaya117/gitlearn_new/assets/139655462/df722cb9-139d-45bc-a2aa-4c4e58c1d2cc">

#### In real world to measure speed of anything a clock is used , Computers are no exception .
##### Clock is given to the computer , which feed the sequential logic of the cpu. Ultimate aim of the CPU designers is to increase the clock speed , that is to reduce clock period by scaling transistors , improving the microarchitecture etc.
<img width="616" alt="clock_speed" src="https://github.com/jaya117/gitlearn_new/assets/139655462/caa10508-72a4-465b-8fd6-dfebef6dce4b">

#### So how do we really measure the CPU performance. Formulas to measure CPU performance 
<img width="620" alt="clock_speed1" src="https://github.com/jaya117/gitlearn_new/assets/139655462/82e553a0-2ef0-4c6d-8ad2-f6e1632111ea">

#### Example of CPU time calculation
<img width="636" alt="cpu_time_calculation" src="https://github.com/jaya117/gitlearn_new/assets/139655462/b9a4b287-4c42-459f-a98b-f368fce3fba6">

#### If in above example each instruction on an average takes 5 cycles to exceute then this system is exceuting 4 billion instructions in 20 second which is a HUGE number

#### While measuring and comparing the CPU performance the only bottom line is CPU time taken by various CPUs for performing the same task. The CPU clock rate or the number of clock cycle that a cpu takes to execute an instruction do not provide any information about it's relative performance with respect to other CPUs. As shown in example below that compares performance of two CPUs 

#### Problem:
<img width="615" alt="perf_comparison1" src="https://github.com/jaya117/gitlearn_new/assets/139655462/e0615fab-cf21-4f8a-904e-075ff4a65cb4">

#### Solution:
<img width="629" alt="perf_comparison2" src="https://github.com/jaya117/gitlearn_new/assets/139655462/44330dcb-d289-4134-a514-104d8ed1cc42">

#### In example above CPU2 may be taking many more cycles to execute the same instruction than CPU1, yet it's performance is better than CPU1 as its CPU time is less than that of CPU1

### Another way of respresnting CPU performance is CPI (Clocks per instruction)
#### In example below the numbers in () in front of each instruction is the clock cycles taken to execute the instruction.
#### Total clock cycles taken to execute all instructions = 3+2+3+3+4+4+4+4+4+2=29
#### Total nuber of instructions = 9
#### Average time to execute one instruction = 29/9= 3.22
<img width="625" alt="CPU_performance_in_terms_of_CPI" src="https://github.com/jaya117/gitlearn_new/assets/139655462/236d02dc-dcbe-4869-8123-d66c88255de9">

#### New formula for CPU performance . 
#### Conclusion  .... Lower CPI = > Higher CPU performance 

<img width="613" alt="CPU_performance_new_formula" src="https://github.com/jaya117/gitlearn_new/assets/139655462/3354efa1-9f6b-4fc7-be86-04988bea6728">

#### However above conclusion is little tricky as it's true only when the clock period is not taken into account

<img width="644" alt="image" src="https://github.com/jaya117/gitlearn_new/assets/139655462/a42c3f3d-0978-40bc-b234-d43f566ce1a4">

### How does the Software code itself impact the performance of the CPU ?

#### Which code sequence is faster in the scenario given below ?
<img width="632" alt="image" src="https://github.com/jaya117/gitlearn_new/assets/139655462/d6658f4e-5474-4ec1-a314-b62d297b9c11">

#### The more a software uses instructions that have larger CPI the worse it's performance is as compared to a software that uses more instructions with smaller CPI 
#### In example below , even though the red software sequence uses more instruction it's total CPI is less as it uses more instructions with smaller CPI as compared to blue sequence
<img width="619" alt="image" src="https://github.com/jaya117/gitlearn_new/assets/139655462/b3e73c82-d129-427f-8845-2ab5c13de72b">
</details>
<details><summary> CPU microarchitecture </summary>
 TBD
</details>

<details> <summary> Chipcron tool </summary>
 In week2 session2 the RISC-HDP cohort  we were introduced to the chipcron tool developed by the 
 trainer of the course Mayank Kabra
 This tool is a an automatic RISCV core generator tool which spits out synthesizable RTL for a RISC 
 core based on the specification provided by the user Core's specification 
 depends on the application for which the RISCV core needs to be created. The tool also generates a 
 verilog testbench to test the core 
 This session's task for each member of the cohort is to identify an IoT application for which they 
 would like to generate a RISC core using the ChipCron tool
 <ol> <li> <strong>The interface</strong> -  Tool provides a script based interface to the user where the user can modify a json file to specify their RISC-V core. 
 Fields in the json file are self explainatory ..e.g. Alu_dist actually indicates the number of pipeline stages needed.
 The idea is to choose the parameters wisely and fully based on the exact needs of the application program. For example if the code only has 50 instructions then a small 
 instruction memory will be sufficient and PC size of 6 bits can cater to the needs of the program. Similarly we can choose what all instructions our code needs and only implement those instructions in the microarchitecture of our core 
    <img width="563" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/0f569ef3-4a79-4149-8069-6d1078364049"> </li> <li> Steps to use the tool</li></ol>
   
</details>
<details> 
  <summary> Training Project - Choosing the IoT application for implementation </summary>
  Still thinking about it.
























