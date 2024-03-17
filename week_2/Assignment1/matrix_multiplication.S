### Performance Calculation
Total number of instrauctions - 78, clock freq = 1GHz , clockk period =1 ns
Instruction   execution time (in clks)  Frequency_of_instruction   total_clk_cycles_taken_by_the_inst  
addi          2                         9                           9x2 = 18
sw            4                        12                          4x12 = 48
j             3                         3                           3x3 =  9
lw            4                        23                          4x23 = 92
slli          3                        10                          3x10 = 30
add           3                        11                          3x11 = 33
mul           5                         1                           5x1 =  5
ble           4                         3                           4x3 = 12
li            2                         3                           2x3 =  6
nop           1                         2                           1x2 =  2
jr            3                         1                           3x1 =  3
                                               
Total clock cycles                                                   258
CPI                                                                  258/78 = 3.30 clocks per instructions 
CPU performance  = CPI * Instruction count * clock cycle time =      (258/78)*78* 1ns = 258ns

Note: Above Performance calculation is done assuming that there is only a single iteration for all loops in the program

### Assembly code

mulMat(int (*) [2], int (*) [2]):
        addi    sp,sp,-64
        sw      ra,60(sp)
        sw      s0,56(sp)
        addi    s0,sp,64
        sw      a0,-52(s0)
        sw      a1,-56(s0)
        sw      zero,-20(s0)
        j       .L2
.L7:
        sw      zero,-24(s0)
        j       .L3
.L6:
        lw      a5,-20(s0)
        slli    a4,a5,1
        lw      a5,-24(s0)
        add     a4,a4,a5
        addi    a5,s0,-44
        slli    a4,a4,2
        add     a5,a4,a5
        sw      zero,0(a5)
        sw      zero,-28(s0)
        j       .L4
.L5:
        lw      a5,-20(s0)
        slli    a4,a5,1
        lw      a5,-24(s0)
        add     a4,a4,a5
        addi    a5,s0,-44
        slli    a4,a4,2
        add     a5,a4,a5
        lw      a4,0(a5)
        lw      a5,-20(s0)
        slli    a5,a5,3
        lw      a3,-52(s0)
        add     a3,a3,a5
        lw      a5,-28(s0)
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a3,0(a5)
        lw      a5,-28(s0)
        slli    a5,a5,3
        lw      a2,-56(s0)
        add     a2,a2,a5
        lw      a5,-24(s0)
        slli    a5,a5,2
        add     a5,a2,a5
        lw      a5,0(a5)
        mul     a5,a3,a5
        add     a4,a4,a5
        lw      a5,-20(s0)
        slli    a3,a5,1
        lw      a5,-24(s0)
        add     a3,a3,a5
        addi    a5,s0,-44
        slli    a3,a3,2
        add     a5,a3,a5
        sw      a4,0(a5)
        lw      a5,-28(s0)
        addi    a5,a5,1
        sw      a5,-28(s0)
.L4:
        lw      a4,-28(s0)
        li      a5,1
        ble     a4,a5,.L5
        lw      a5,-24(s0)
        addi    a5,a5,1
        sw      a5,-24(s0)
.L3:
        lw      a4,-24(s0)
        li      a5,1
        ble     a4,a5,.L6
        lw      a5,-20(s0)
        addi    a5,a5,1
        sw      a5,-20(s0)
.L2:
        lw      a4,-20(s0)
        li      a5,1
        ble     a4,a5,.L7
        nop
        nop
        lw      ra,60(sp)
        lw      s0,56(sp)
        addi    sp,sp,64
        jr      ra

