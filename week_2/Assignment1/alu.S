### Performance Calculation
Total number of instrauctions - 41, clock freq = 1GHz , clock period =1 ns
Instruction   execution time (in clks)  Frequency_of_instruction   total_clk_cycles_taken_by_the_inst  
addi          2                         3                           3x2 =  6
sw            4                         6                           4x6 = 24
j             3                         3                           3x3 =  9
lw            4                        14                          4x14 = 56
li            2                         5                           2x5 = 10
mv            2                         1                           2x1 =  2
add           3                         1                           3x1 =  3
sub           3                         1                           3x1 =  3
mul           5                         1                           5x1 =  5
div           5                         1                           5x1 =  5
bne           4                         4                           4x4 = 16
jr            3                         1                           3x1 =  3
                                               
Total clock cycles taken to execute the program                           142
CPI                                                                  142/41 = 3.46 clocks per instructions 
CPU performance  = CPI * Instruction count * clock cycle time =      (142/41)*41* 1ns = 142 ns

### Assembly code 
main:
        addi    sp,sp,-32
        sw      ra,28(sp)
        sw      s0,24(sp)
        addi    s0,sp,32
        lw      a4,-20(s0)
        li      a5,1
        bne     a4,a5,.L2
        lw      a4,-24(s0)
        lw      a5,-28(s0)
        add     a5,a4,a5
        sw      a5,-32(s0)
        j       .L3
.L2:
        lw      a4,-20(s0)
        li      a5,2
        bne     a4,a5,.L4
        lw      a4,-24(s0)
        lw      a5,-28(s0)
        sub     a5,a4,a5
        sw      a5,-32(s0)
        j       .L3
.L4:
        lw      a4,-20(s0)
        li      a5,3
        bne     a4,a5,.L5
        lw      a4,-24(s0)
        lw      a5,-28(s0)
        mul     a5,a4,a5
        sw      a5,-32(s0)
        j       .L3
.L5:
        lw      a4,-20(s0)
        li      a5,4
        bne     a4,a5,.L3
        lw      a4,-24(s0)
        lw      a5,-28(s0)
        div     a5,a4,a5
        sw      a5,-32(s0)
.L3:
        li      a5,0
        mv      a0,a5
        lw      ra,28(sp)
        lw      s0,24(sp)
