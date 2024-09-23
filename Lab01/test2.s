#SysYTest2-Riscv汇编

    .option nopic
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access,0
    .attribute stack_align,16

    .data
.LC2:
    .string "%f"
.LC0:
    .string "The result is %.3f.\n"
.LC1:
    .string "Please input 第 %d 个:"

    zero_float: .float 0.000     # 在数据段定义一个浮点数 0.0
    sum: .float 0.000


    .text

    .global main
    .type main.@function
main:
    addi sp,sp,-32

#sum是局部变量,在栈中开辟空间保存    
    
#使用f0和s0两个寄存器，ra寄存器保存返回地址
    sd s0,8(sp)
    fsd fs0,16(sp)
    sd ra,24(sp)

#for(int i=0;i<10;i++)
#fs0保存sum累加的结果,初始化为0.0
    la a0,sum
    flw fs0,0(a0)

#s0代表i，记录循环次数
    li s0,0
#创建局部变量t,存储在栈顶,初始值为0.0
    la a0,zero_float
    flw fa0,0(a0)
    fsd fa0,0(sp)

.L1:
    #准备输出字符串
    mv a1,s0
    addi a1,a1,1
    lui a0,%hi(.LC1)
    addi a0,a0,%lo(.LC1)
    call putf
#////////////////////////////////////准备输入
    call getfloat
    
#//////////////////////////输入结果在fa0
#先存到局部变量t中
    fsd fa0,0(sp)   #加载t
#再累加到fs0寄存器,并将值保存到sum中
    la a0,sum
    flw fs0,0(a0)    #加载原sum
    fadd.s fs0,fs0,fa0  #sum=sum+t
    
    fsd fs0,0(a0)    #存回sum
    
##########################(i++)
    addi s0,s0,1
##########################循环10次
    li a1,10
    blt s0,a1,.L1

    #准备调用print函数
    #第二个参数，传递值
    
   ##############################################
    la a0,sum
    flw fs0,0(a0) #加载sum到fs0
    fmv.d fa5,fs0  
    fcvt.d.s fa5,fa5   #扩展为双精度
    fmv.x.d a1,fa5  #浮点寄存器到整型寄存器
    lui a0,%hi(.LC0)
    addi a0,a0,%lo(.LC0)
    #la a0,.LC0
    call putf


    #恢复寄存器状态
    ld ra,24(sp)
    flw fs0,16(sp)
    ld s0,8(sp)
    
    addi sp,sp,32
    jr ra
    .size main,.-main
