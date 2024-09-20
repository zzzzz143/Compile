#编写SysY程序一对应的汇编语言
    .option nopic
    .attribute arch,"rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access,0
    .attribute stack_align,16

    .text

    .global SUM
    .type SUM,@function

#//SUM函数使用寄存器a0,a1两个寄存器来存放参数；
#使用a0来存放返回值
SUM:  
    mv a5,a0 
    add a0,a5,a1
    ret
    .size  SUM, .-SUM

.Str:
    .string "The result of  %d + %d is %d. \n"


    .global main
    .type main.@function
#主函数:要使用到s0和s1寄存器
main:
    addi sp,sp,-48
    sd s0,32(sp)
    sd s1,24(sp)
    sd ra,40(sp)
    li s1,20
    li s0,10
    sd s0,16(sp)
    sd s1,8(sp)



    ld a1,8(sp)
    ld a0,16(sp)
    call SUM
    mv a3,a0
    ld a2,8(sp)
    ld a1,16(sp)
    lui a0,%hi(.Str)
    addi a0,a0,%lo(.Str)
    call putf
    ld ra,40(sp)
    ld s1,24(sp)
    ld s0,32(sp)
    mv a0,a3
    addi sp,sp,48
    jr ra
    .size main, .-main
    

    


