### Performance Calculation 
Total number of instrauctions - 37, clock freq = 1GHz , clockk period =1 ns
Instruction   execution time (in clks)  Frequency_of_instruction   total_clk_cycles_taken_by_the_inst  
addi          2                         7                           7x2 = 14
mv            2                         1                           1x2 =  2
sw            4                        10                          10x4 = 40
j             3                         1                           1x3 =  3
lw            4                         7                           7x4 = 28
slt           3                         1                           1x3 =  3
andi          2                         1                           1x2 =  2
add           3                         1                           1x3 =  3
bne           4                         2                           2x4 =  8
li            2                         2                           2x2 =  4
nop           1                         3                           3x1 =  3
jr            3                         1                           1x3 =  3
                                               
Total clock cycles                                                   113
CPI                                                                  113/37 = 3.05 clocks per instructions 
CPU performance  = CPI * Instruction count * clock cycle time =      (113/37)*37* 1ns = 113 ns

Note: Above Performance calculation is done assuming that there is only a single iteration for all loops in the program

### Assembly Code

delay(int):
        addi    sp,sp,-48
        sw      ra,44(sp)
        sw      s0,40(sp)
        addi    s0,sp,48
        sw      a0,-36(s0)
        lw      a5,-36(s0)
        sw      a5,-20(s0)
        sw      a0,-24(s0)
        nop
.L2:
        mv      a3,a0
        lw      a4,-24(s0)
        lw      a5,-20(s0)
        add     a5,a4,a5
        slt     a5,a3,a5
        andi    a5,a5,0xff
        bne     a5,zero,.L2
        nop
        nop
        lw      ra,44(sp)
        lw      s0,40(sp)
        addi    sp,sp,48
        jr      ra
main:
        addi    sp,sp,-32
        sw      ra,28(sp)
        sw      s0,24(sp)
        addi    s0,sp,32
        sw      zero,-20(s0)
.L5:
        lw      a5,-20(s0)
        addi    a5,a5,1
        sw      a5,-20(s0)
        lw      a4,-20(s0)
        li      a5,16
        bne     a4,a5,.L4
        sw      zero,-20(s0)
.L4:
        li      a5,499712
        addi    a0,a5,288
        call    delay(int)
        j       .L5

