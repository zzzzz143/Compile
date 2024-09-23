
source.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <_Z4GetNv>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # f <_Z4GetNv+0xf>
   f:	48 8d 75 fc          	lea    -0x4(%rbp),%rsi
  13:	e8 00 00 00 00       	call   18 <_Z4GetNv+0x18>
  18:	8b 45 fc             	mov    -0x4(%rbp),%eax
  1b:	48 83 c4 10          	add    $0x10,%rsp
  1f:	5d                   	pop    %rbp
  20:	c3                   	ret    
  21:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  28:	00 00 00 
  2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000030 <main>:
  30:	55                   	push   %rbp
  31:	48 89 e5             	mov    %rsp,%rbp
  34:	48 83 ec 10          	sub    $0x10,%rsp
  38:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  3f:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  46:	e8 00 00 00 00       	call   4b <main+0x1b>
  4b:	89 45 f4             	mov    %eax,-0xc(%rbp)
  4e:	8b 75 f8             	mov    -0x8(%rbp),%esi
  51:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 58 <main+0x28>
  58:	e8 00 00 00 00       	call   5d <main+0x2d>
  5d:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 64 <main+0x34>
  64:	48 89 c7             	mov    %rax,%rdi
  67:	e8 00 00 00 00       	call   6c <main+0x3c>
  6c:	8b 75 fc             	mov    -0x4(%rbp),%esi
  6f:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 76 <main+0x46>
  76:	e8 00 00 00 00       	call   7b <main+0x4b>
  7b:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 82 <main+0x52>
  82:	48 89 c7             	mov    %rax,%rdi
  85:	e8 00 00 00 00       	call   8a <main+0x5a>
  8a:	8b 7d f8             	mov    -0x8(%rbp),%edi
  8d:	8b 75 fc             	mov    -0x4(%rbp),%esi
  90:	8b 55 f4             	mov    -0xc(%rbp),%edx
  93:	e8 00 00 00 00       	call   98 <main+0x68>
  98:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 9f <main+0x6f>
  9f:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
  a6:	00 00 00 
  a9:	e8 00 00 00 00       	call   ae <main+0x7e>
  ae:	31 c0                	xor    %eax,%eax
  b0:	48 83 c4 10          	add    $0x10,%rsp
  b4:	5d                   	pop    %rbp
  b5:	c3                   	ret    

Disassembly of section .text.startup:

0000000000000000 <__cxx_global_var_init>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	bf 00 00 00 00       	mov    $0x0,%edi
   9:	e8 00 00 00 00       	call   e <__cxx_global_var_init+0xe>
   e:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 15 <__cxx_global_var_init+0x15>
  15:	be 00 00 00 00       	mov    $0x0,%esi
  1a:	ba 00 00 00 00       	mov    $0x0,%edx
  1f:	e8 00 00 00 00       	call   24 <__cxx_global_var_init+0x24>
  24:	5d                   	pop    %rbp
  25:	c3                   	ret    
  26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  2d:	00 00 00 

0000000000000030 <_GLOBAL__sub_I_source.cpp>:
  30:	55                   	push   %rbp
  31:	48 89 e5             	mov    %rsp,%rbp
  34:	e8 c7 ff ff ff       	call   0 <__cxx_global_var_init>
  39:	5d                   	pop    %rbp
  3a:	c3                   	ret    

Disassembly of section .text._Z3Fibiii:

0000000000000000 <_Z3Fibiii>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	89 7d f8             	mov    %edi,-0x8(%rbp)
   b:	89 75 fc             	mov    %esi,-0x4(%rbp)
   e:	89 55 f0             	mov    %edx,-0x10(%rbp)
  11:	8b 04 25 00 00 00 00 	mov    0x0,%eax
  18:	3b 45 f0             	cmp    -0x10(%rbp),%eax
  1b:	7d 46                	jge    63 <_Z3Fibiii+0x63>
  1d:	8b 45 fc             	mov    -0x4(%rbp),%eax
  20:	89 45 f4             	mov    %eax,-0xc(%rbp)
  23:	8b 45 f8             	mov    -0x8(%rbp),%eax
  26:	03 45 fc             	add    -0x4(%rbp),%eax
  29:	89 45 fc             	mov    %eax,-0x4(%rbp)
  2c:	8b 75 fc             	mov    -0x4(%rbp),%esi
  2f:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 36 <_Z3Fibiii+0x36>
  36:	e8 00 00 00 00       	call   3b <_Z3Fibiii+0x3b>
  3b:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 42 <_Z3Fibiii+0x42>
  42:	48 89 c7             	mov    %rax,%rdi
  45:	e8 00 00 00 00       	call   4a <_Z3Fibiii+0x4a>
  4a:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4d:	89 45 f8             	mov    %eax,-0x8(%rbp)
  50:	8b 04 25 00 00 00 00 	mov    0x0,%eax
  57:	83 c0 01             	add    $0x1,%eax
  5a:	89 04 25 00 00 00 00 	mov    %eax,0x0
  61:	eb ae                	jmp    11 <_Z3Fibiii+0x11>
  63:	0f 0b                	ud2    
