#SysYTest3-Riscv汇编

    .option nopic
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access,0
    .attribute stack_align,16
    .text

.LC0:
    .string "arr%d : %d.\n"

.LC2:
    .string "Please input 第 %d 个:"

.LC1:
    .string "%d "

    .global main
    .type main.@function
main:
    addi sp,sp,-104
#sp指向arr[0]
#保存寄存器状态
    sd s0,80(sp)
    sd s1,88(sp)
    sd ra,96(sp)

#进行数据的输入
#s1代表i，记录循环次数
    li s1,0
.L1:
#输出提示字符串
    mv a1,s1
    li a3,8
    div a1,a1,a3
    addi a1,a1,1
    lui a0,%hi(.LC2)
    addi a0,a0,%lo(.LC2)
    call putf
#进行数据的输入

#初始化这一部分栈中对应的数据
#s0记录输入的数据要存放的位置
    li a0,0
    add s0,sp,s1
    sd a0,0(s0)
#s0记录输入的数据要存放的位置
    call getint
    sd a0,0(s0)
    addi s1,s1,8
    li a2,80 
    blt s1,a2,.L1


#冒泡排序部分
#s0记录外层循环，s1记录内层循环
    li s0,0
.L2:
    li s1,0
.L3:
#a0记录arr[j],a1记录arr[j+1]
    mv a2,s1
    li a4,8
    mul a2,a2,a4
    add a3,sp,a2
    ld a0,0(a3)  #a0=[8*j]
    addi a3,a3,8
    ld a1,0(a3)  #a1=[8*(j+1)]
#a3指向【8*(j+1)】,a4为8,a2为8*j
#接下来让a4保存【8*j】即temp
    mv a4,a0
 #if语句部分   
    bgt a0,a1,.L4
    j .L5
.L4:#表示要进行交换
    
    addi a3,a3,-8 #a3指向【8*j】
    sd a1,0(a3)
    addi a3,a3,8 #a3指向【8*(j+1)】
    sd a4,0(a3)

.L5:
    addi s1,s1,1
    li a2,9
    sub a3,a2,s0
    blt s1,a3,.L3

    addi s0,s0,1
    li a2,9
    blt s0,a2,.L2


#####逐个输出数组的值
    li s1,0
.L6:    
    add s0,sp,s1
    ld a1,0(s0)
    lui a0,%hi(.LC1)
    addi a0,a0,%lo(.LC1)
    call putf
    addi s1,s1,8
    li a2,80 
    blt s1,a2,.L6


#恢复寄存器状态
    ld ra,96(sp)
    ld s1,88(sp)
    ld s0,80(sp)
    addi sp,sp,104
    jr ra
    .size main,.-main
