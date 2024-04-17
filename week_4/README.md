<details><summary> Project tasks for this week </summary>
This week's task is to add inline assembly code to create bare metal C application for 
motion controlled LED light bar, compile it using riscv32 compiler and generate asm text file. 
I have created two versions of assmebly code , the first version is without using RISC-v compiler optimizations  and the second version is using -Ofast compiler switch which results in a little less number of instructions.
</details> <details> <summary> Application C code with inline assembly </summary>- [motion_sensitive_led_bar_with_inline_asm.c
](./Assignment/motion_sensitive_led_bar_with_inline_asm.c
)
</details>
<details><summary>Full Assembly code for application  without compiler optimization </summary>
 
[motion_sensitive_led_bar.asm](./Assignment/motion_sensitive_led_bar.asm)

</details> <details> <summary>Full Assembly code for application with Ofast compiler optimization </summary>
 - [motion_sensitive_led_bar_Ofast.asm](./Assignment/motion_sensitive_led_bar_Ofast.asm)
</details> <details><summary>The instruction statistics from the Ofast version of the assembly code </summary>


<ol> <li>Total number of instructions used in Ofast version of assembly code - <strong>159</strong> </li>  <li> Total number of unique instructions used in the program - <strong>17</strong> </li> 



<li>List of Unique Instructions produced by the compiler</li>
<ol> <li> <strong>lui</strong></li>
 <li> <strong>li </strong></li>
<li> <strong>addi</strong> </li>
<li> <strong>not</strong> </li>
<li> <strong>and </strong> </li>
<li> <strong>andi </strong> </li>
<li> <strong> beqz </strong> </li>
<li> <strong>srli </strong> </li>
<li> <strong>bnez </strong> </li>
<li> <strong>add </strong> </li>
<li> <strong>slli </strong> </li>
<li> <strong>or </strong> </li>
<li> <strong> j </strong> </li>
<li> <strong>ret </strong> </li>
<li> <strong>mv </strong> </li>
<li> <strong>sw </strong> </li>
<li> <strong>lw </strong> </li>
</ol>
</ol>
</details>
