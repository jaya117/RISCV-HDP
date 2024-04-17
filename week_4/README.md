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
</details>
## The instruction statistics from the Ofast version of the assembly code 

#### Total number of instructions used in Ofast version of assembly code - 159

#### Total number of unique instructions used in the program - 17

#### Unique Instructions
1. lui
2. li
3. addi
4. not
5. an
6. andi
7. beqz
8. srli
9. bnez
10. add
11. slli
12. or
13. j
14. ret
15. mv
16. sw
17. lw

