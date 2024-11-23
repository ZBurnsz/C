	.file	"hash.c"
	.text
.Ltext0:
	.file 0 "/mnt/c/Users/Zach/OneDrive/Documents/GitHub/C/cs3050/lab3_hash" "hash.c"
	.section	.rodata
.LC0:
	.string	"Null-InsertFailCollision"
	.text
	.globl	InsertFailCollision
	.type	InsertFailCollision, @function
InsertFailCollision:
.LFB6:
	.file 1 "hash.c"
	.loc 1 18 130
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	.loc 1 19 8
	cmpq	$0, -40(%rbp)
	je	.L2
	.loc 1 19 27 discriminator 1
	cmpq	$0, -72(%rbp)
	je	.L2
	.loc 1 19 47 discriminator 2
	cmpq	$0, -64(%rbp)
	jne	.L3
.L2:
	.loc 1 20 9
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$24, %edx
	movl	$1, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 21 16
	movl	$1, %eax
	jmp	.L4
.L3:
	.loc 1 23 17
	movl	-52(%rbp), %eax
	movq	-72(%rbp), %rdx
	movl	%eax, %edi
	call	*%rdx
.LVL0:
	movl	%eax, %edx
	.loc 1 23 9
	movslq	%edx, %rax
	imulq	$1321528399, %rax, %rax
	shrq	$32, %rax
	sarl	$2, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -28(%rbp)
	.loc 1 24 12
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 1 28 14
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 1 28 8
	testq	%rax, %rax
	je	.L5
	.loc 1 29 19
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 29 9
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 30 16
	movl	$-1, %eax
	jmp	.L4
.L5:
	.loc 1 33 20
	movl	-44(%rbp), %eax
	cltq
	.loc 1 33 10
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	.loc 1 33 20
	movq	%rax, %rdi
	call	malloc@PLT
	.loc 1 33 18
	movq	%rax, (%rbx)
	.loc 1 34 5
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 34 17
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 34 5
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 1 36 12
	movl	$0, %eax
.L4:
	.loc 1 37 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	InsertFailCollision, .-InsertFailCollision
	.section	.rodata
.LC1:
	.string	"Null-SearchNoCoollision"
	.text
	.globl	SearchNoCollision
	.type	SearchNoCollision, @function
SearchNoCollision:
.LFB7:
	.loc 1 41 94
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	.loc 1 43 8
	cmpq	$0, -24(%rbp)
	je	.L7
	.loc 1 43 27 discriminator 1
	cmpq	$0, -40(%rbp)
	jne	.L8
.L7:
	.loc 1 44 9
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	movl	$1, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 45 9
	movl	$1, %edi
	call	exit@PLT
.L8:
	.loc 1 48 17
	movl	-28(%rbp), %eax
	movq	-40(%rbp), %rdx
	movl	%eax, %edi
	call	*%rdx
.LVL1:
	movl	%eax, %edx
	.loc 1 48 9
	movslq	%edx, %rax
	imulq	$1321528399, %rax, %rax
	shrq	$32, %rax
	sarl	$2, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -12(%rbp)
	.loc 1 50 12
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 53 14
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 1 53 8
	testq	%rax, %rax
	jne	.L9
	.loc 1 54 16
	movl	$0, %eax
	jmp	.L10
.L9:
	.loc 1 57 17
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
.L10:
	.loc 1 58 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	SearchNoCollision, .-SearchNoCollision
	.globl	DivMethod
	.type	DivMethod, @function
DivMethod:
.LFB8:
	.loc 1 62 24
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	.loc 1 63 9
	movl	$13, -4(%rbp)
	.loc 1 64 16
	movl	-20(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	%edx, %eax
	.loc 1 65 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	DivMethod, .-DivMethod
	.globl	MultMethod
	.type	MultMethod, @function
MultMethod:
.LFB9:
	.loc 1 68 25
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	.loc 1 70 11
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	.loc 1 71 9
	movl	$13, -8(%rbp)
	.loc 1 73 19
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-20(%rbp), %xmm0
	mulss	-12(%rbp), %xmm0
	.loc 1 73 35
	pxor	%xmm1, %xmm1
	cvtsi2ssl	-20(%rbp), %xmm1
	mulss	-12(%rbp), %xmm1
	.loc 1 73 25
	cvttss2sil	%xmm1, %eax
	.loc 1 73 23
	pxor	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	.loc 1 73 11
	subss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	.loc 1 76 20
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-8(%rbp), %xmm0
	mulss	-4(%rbp), %xmm0
	.loc 1 76 12
	cvttss2sil	%xmm0, %eax
	.loc 1 77 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	MultMethod, .-MultMethod
	.globl	AllocateChainTable
	.type	AllocateChainTable, @function
AllocateChainTable:
.LFB10:
	.loc 1 81 47
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 1 83 21
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
.LBB2:
	.loc 1 85 14
	movl	$0, -12(%rbp)
	.loc 1 85 5
	jmp	.L16
.L17:
	.loc 1 86 14 discriminator 3
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 86 18 discriminator 3
	movq	$0, (%rax)
	.loc 1 85 43 discriminator 3
	addl	$1, -12(%rbp)
.L16:
	.loc 1 85 23 discriminator 1
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L17
.LBE2:
	.loc 1 89 12
	movq	-8(%rbp), %rax
	.loc 1 90 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	AllocateChainTable, .-AllocateChainTable
	.globl	InsertChain
	.type	InsertChain, @function
InsertChain:
.LFB11:
	.loc 1 96 122
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	.loc 1 99 17
	movl	-52(%rbp), %eax
	movq	-72(%rbp), %rdx
	movl	%eax, %edi
	call	*%rdx
.LVL2:
	movl	%eax, %edx
	.loc 1 99 9
	movslq	%edx, %rax
	imulq	$1321528399, %rax, %rax
	shrq	$32, %rax
	sarl	$2, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -28(%rbp)
	.loc 1 101 13
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 103 22
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 1 105 18
	movq	-8(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 107 24
	movl	-44(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	.loc 1 107 22
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 109 5
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 1 111 19
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 1 114 14
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 1 114 8
	testq	%rax, %rax
	jne	.L20
	.loc 1 116 14
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 116 22
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	jmp	.L21
.L20:
.LBB3:
	.loc 1 119 31
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 119 16
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 121 15
	jmp	.L22
.L23:
	.loc 1 123 21
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.L22:
	.loc 1 121 23
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 121 30
	testq	%rax, %rax
	jne	.L23
	.loc 1 127 23
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L21:
.LBE3:
	.loc 1 130 12
	movl	$0, %eax
	.loc 1 131 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	InsertChain, .-InsertChain
	.globl	SearchChain
	.type	SearchChain, @function
SearchChain:
.LFB12:
	.loc 1 134 88
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	.loc 1 137 17
	movl	-44(%rbp), %eax
	movq	-56(%rbp), %rdx
	movl	%eax, %edi
	call	*%rdx
.LVL3:
	movl	%eax, %edx
	.loc 1 137 9
	movslq	%edx, %rax
	imulq	$1321528399, %rax, %rax
	shrq	$32, %rax
	sarl	$2, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -20(%rbp)
	.loc 1 139 13
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 141 27
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 141 12
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 143 11
	jmp	.L26
.L29:
	.loc 1 145 20
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 145 12
	cmpl	%eax, -44(%rbp)
	jne	.L27
	.loc 1 147 27
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L28
.L27:
	.loc 1 151 17
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
.L26:
	.loc 1 143 20
	cmpq	$0, -16(%rbp)
	jne	.L29
	.loc 1 154 12
	movl	$0, %eax
.L28:
	.loc 1 155 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	SearchChain, .-SearchChain
	.section	.rodata
.LC3:
	.string	"table is NULL"
	.text
	.globl	FreeChainTable
	.type	FreeChainTable, @function
FreeChainTable:
.LFB13:
	.loc 1 159 38
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 1 161 8
	cmpq	$0, -40(%rbp)
	jne	.L31
	.loc 1 162 9
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$13, %edx
	movl	$1, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 163 9
	jmp	.L30
.L31:
	.loc 1 166 9
	movl	$0, -28(%rbp)
	.loc 1 167 13
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 169 10
	jmp	.L33
.L36:
.LBB4:
	.loc 1 171 31
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 171 16
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 173 15
	jmp	.L34
.L35:
.LBB5:
	.loc 1 174 20
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 175 21
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 177 13
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 178 13
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L34:
.LBE5:
	.loc 1 173 24
	cmpq	$0, -24(%rbp)
	jne	.L35
	.loc 1 180 10
	addl	$1, -28(%rbp)
.L33:
.LBE4:
	.loc 1 169 16
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 1 169 20
	testq	%rax, %rax
	jne	.L36
	.loc 1 183 5
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L30:
	.loc 1 184 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	FreeChainTable, .-FreeChainTable
	.section	.rodata
	.align 4
.LC2:
	.long	1058944890
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdlib.h"
	.file 7 "/usr/include/string.h"
	.file 8 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x732
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x11
	.long	.LASF75
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x9
	.long	.LASF9
	.byte	0x2
	.byte	0xd1
	.byte	0x17
	.long	0x3a
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x12
	.byte	0x8
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x9
	.long	.LASF10
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x6d
	.uleb128 0x9
	.long	.LASF11
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x6d
	.uleb128 0x4
	.long	0x91
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0xd
	.long	.LASF50
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x21f
	.uleb128 0x1
	.long	.LASF13
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x66
	.byte	0
	.uleb128 0x1
	.long	.LASF14
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0x8c
	.byte	0x8
	.uleb128 0x1
	.long	.LASF15
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0x8c
	.byte	0x10
	.uleb128 0x1
	.long	.LASF16
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0x8c
	.byte	0x18
	.uleb128 0x1
	.long	.LASF17
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0x8c
	.byte	0x20
	.uleb128 0x1
	.long	.LASF18
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0x8c
	.byte	0x28
	.uleb128 0x1
	.long	.LASF19
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x8c
	.byte	0x30
	.uleb128 0x1
	.long	.LASF20
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x8c
	.byte	0x38
	.uleb128 0x1
	.long	.LASF21
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x8c
	.byte	0x40
	.uleb128 0x1
	.long	.LASF22
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0x8c
	.byte	0x48
	.uleb128 0x1
	.long	.LASF23
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0x8c
	.byte	0x50
	.uleb128 0x1
	.long	.LASF24
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0x8c
	.byte	0x58
	.uleb128 0x1
	.long	.LASF25
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x238
	.byte	0x60
	.uleb128 0x1
	.long	.LASF26
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x23d
	.byte	0x68
	.uleb128 0x1
	.long	.LASF27
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x66
	.byte	0x70
	.uleb128 0x1
	.long	.LASF28
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x66
	.byte	0x74
	.uleb128 0x1
	.long	.LASF29
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x74
	.byte	0x78
	.uleb128 0x1
	.long	.LASF30
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x51
	.byte	0x80
	.uleb128 0x1
	.long	.LASF31
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x58
	.byte	0x82
	.uleb128 0x1
	.long	.LASF32
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x242
	.byte	0x83
	.uleb128 0x1
	.long	.LASF33
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x252
	.byte	0x88
	.uleb128 0x1
	.long	.LASF34
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x80
	.byte	0x90
	.uleb128 0x1
	.long	.LASF35
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x25c
	.byte	0x98
	.uleb128 0x1
	.long	.LASF36
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x266
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF37
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x23d
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF38
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x48
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF39
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2e
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF40
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x66
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF41
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x26b
	.byte	0xc4
	.byte	0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0x98
	.uleb128 0x14
	.long	.LASF76
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x4
	.long	0x233
	.uleb128 0x4
	.long	0x98
	.uleb128 0xe
	.long	0x91
	.long	0x252
	.uleb128 0xf
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x22b
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x4
	.long	0x257
	.uleb128 0xc
	.long	.LASF45
	.uleb128 0x4
	.long	0x261
	.uleb128 0xe
	.long	0x91
	.long	0x27b
	.uleb128 0xf
	.long	0x3a
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	0x21f
	.uleb128 0x15
	.long	.LASF77
	.byte	0x8
	.byte	0x91
	.byte	0xe
	.long	0x27b
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0x4
	.long	0x29f
	.uleb128 0x16
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.long	.LASF48
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.long	.LASF49
	.uleb128 0xd
	.long	.LASF51
	.byte	0x18
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.long	0x2e3
	.uleb128 0x17
	.string	"key"
	.byte	0x1
	.byte	0x9
	.byte	0x9
	.long	0x66
	.byte	0
	.uleb128 0x1
	.long	.LASF52
	.byte	0x1
	.byte	0xa
	.byte	0xb
	.long	0x48
	.byte	0x8
	.uleb128 0x1
	.long	.LASF53
	.byte	0x1
	.byte	0xb
	.byte	0x13
	.long	0x2e3
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	0x2ae
	.uleb128 0x9
	.long	.LASF51
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.long	0x2ae
	.uleb128 0x18
	.long	.LASF54
	.byte	0x6
	.value	0x270
	.byte	0xd
	.long	0x307
	.uleb128 0x6
	.long	0x66
	.byte	0
	.uleb128 0x19
	.long	.LASF55
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.long	0x48
	.long	0x327
	.uleb128 0x6
	.long	0x48
	.uleb128 0x6
	.long	0x29a
	.uleb128 0x6
	.long	0x2e
	.byte	0
	.uleb128 0x1a
	.long	.LASF56
	.byte	0x6
	.value	0x21c
	.byte	0xe
	.long	0x48
	.long	0x33e
	.uleb128 0x6
	.long	0x2e
	.byte	0
	.uleb128 0x1b
	.long	.LASF78
	.byte	0x6
	.value	0x22b
	.byte	0xd
	.long	0x351
	.uleb128 0x6
	.long	0x48
	.byte	0
	.uleb128 0x1c
	.long	.LASF73
	.byte	0x1
	.byte	0x9f
	.byte	0x6
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d8
	.uleb128 0x2
	.long	.LASF60
	.byte	0x9f
	.byte	0x1b
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.string	"i"
	.byte	0xa6
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.long	.LASF57
	.byte	0xa7
	.byte	0xd
	.long	0x3d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x3
	.long	.LASF58
	.byte	0xab
	.byte	0x10
	.long	0x3dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x3
	.long	.LASF59
	.byte	0xae
	.byte	0x14
	.long	0x3dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x3dd
	.uleb128 0x4
	.long	0x2e8
	.uleb128 0xb
	.long	.LASF64
	.byte	0x86
	.byte	0x7
	.long	0x48
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x467
	.uleb128 0x2
	.long	.LASF60
	.byte	0x86
	.byte	0x19
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.string	"key"
	.byte	0x86
	.byte	0x28
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.long	.LASF61
	.byte	0x86
	.byte	0x31
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF62
	.byte	0x86
	.byte	0x44
	.long	0x476
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.long	.LASF63
	.byte	0x89
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.long	.LASF57
	.byte	0x8b
	.byte	0xd
	.long	0x3d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.long	.LASF58
	.byte	0x8d
	.byte	0xc
	.long	0x3dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1d
	.long	0x66
	.long	0x476
	.uleb128 0x6
	.long	0x66
	.byte	0
	.uleb128 0x4
	.long	0x467
	.uleb128 0xb
	.long	.LASF65
	.byte	0x60
	.byte	0x5
	.long	0x66
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x53e
	.uleb128 0x2
	.long	.LASF60
	.byte	0x60
	.byte	0x17
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF61
	.byte	0x60
	.byte	0x26
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.long	.LASF66
	.byte	0x60
	.byte	0x37
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.string	"key"
	.byte	0x60
	.byte	0x4c
	.long	0x66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.long	.LASF52
	.byte	0x60
	.byte	0x57
	.long	0x48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2
	.long	.LASF62
	.byte	0x60
	.byte	0x66
	.long	0x476
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3
	.long	.LASF67
	.byte	0x63
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.long	.LASF57
	.byte	0x65
	.byte	0xd
	.long	0x3d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.long	.LASF68
	.byte	0x67
	.byte	0xc
	.long	0x3dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x3
	.long	.LASF58
	.byte	0x77
	.byte	0x10
	.long	0x3dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF69
	.byte	0x51
	.byte	0x8
	.long	0x48
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x59a
	.uleb128 0x2
	.long	.LASF66
	.byte	0x51
	.byte	0x1f
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.long	.LASF57
	.byte	0x53
	.byte	0xd
	.long	0x3d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x7
	.string	"i"
	.byte	0x55
	.byte	0xe
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF70
	.byte	0x44
	.long	0x66
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ed
	.uleb128 0x8
	.string	"key"
	.byte	0x44
	.byte	0x14
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"A"
	.byte	0x46
	.byte	0xb
	.long	0x2a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"m"
	.byte	0x47
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"f"
	.byte	0x49
	.byte	0xb
	.long	0x2a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF71
	.byte	0x3e
	.long	0x66
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x628
	.uleb128 0x8
	.string	"key"
	.byte	0x3e
	.byte	0x13
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"m"
	.byte	0x3f
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.long	.LASF72
	.byte	0x29
	.byte	0x7
	.long	0x48
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x69e
	.uleb128 0x2
	.long	.LASF60
	.byte	0x29
	.byte	0x1f
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"key"
	.byte	0x29
	.byte	0x2e
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.long	.LASF61
	.byte	0x29
	.byte	0x37
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF62
	.byte	0x29
	.byte	0x4a
	.long	0x476
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.long	.LASF63
	.byte	0x30
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.long	.LASF57
	.byte	0x32
	.byte	0xc
	.long	0x69e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.long	0x48
	.uleb128 0x1e
	.long	.LASF74
	.byte	0x1
	.byte	0x12
	.byte	0x5
	.long	0x66
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF60
	.byte	0x12
	.byte	0x1f
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF61
	.byte	0x12
	.byte	0x2e
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.long	.LASF66
	.byte	0x12
	.byte	0x3f
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.string	"key"
	.byte	0x12
	.byte	0x54
	.long	0x66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.long	.LASF52
	.byte	0x12
	.byte	0x5f
	.long	0x48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2
	.long	.LASF62
	.byte	0x12
	.byte	0x6e
	.long	0x476
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3
	.long	.LASF63
	.byte	0x17
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.long	.LASF57
	.byte	0x18
	.byte	0xc
	.long	0x69e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF56:
	.string	"malloc"
.LASF26:
	.string	"_chain"
.LASF72:
	.string	"SearchNoCollision"
.LASF9:
	.string	"size_t"
.LASF68:
	.string	"newNode"
.LASF32:
	.string	"_shortbuf"
.LASF20:
	.string	"_IO_buf_base"
.LASF47:
	.string	"long long unsigned int"
.LASF53:
	.string	"next"
.LASF35:
	.string	"_codecvt"
.LASF46:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF66:
	.string	"elementCountMax"
.LASF27:
	.string	"_fileno"
.LASF75:
	.string	"GNU C17 11.4.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF15:
	.string	"_IO_read_end"
.LASF8:
	.string	"long int"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF44:
	.string	"_IO_codecvt"
.LASF49:
	.string	"double"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF59:
	.string	"temp"
.LASF43:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF38:
	.string	"_freeres_buf"
.LASF2:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF5:
	.string	"short unsigned int"
.LASF60:
	.string	"hashtable"
.LASF22:
	.string	"_IO_save_base"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF61:
	.string	"elementSize"
.LASF69:
	.string	"AllocateChainTable"
.LASF64:
	.string	"SearchChain"
.LASF74:
	.string	"InsertFailCollision"
.LASF62:
	.string	"HashFunc"
.LASF19:
	.string	"_IO_write_end"
.LASF76:
	.string	"_IO_lock_t"
.LASF50:
	.string	"_IO_FILE"
.LASF58:
	.string	"current"
.LASF48:
	.string	"float"
.LASF51:
	.string	"Chain"
.LASF25:
	.string	"_markers"
.LASF4:
	.string	"unsigned char"
.LASF67:
	.string	"Index"
.LASF7:
	.string	"short int"
.LASF45:
	.string	"_IO_wide_data"
.LASF57:
	.string	"table"
.LASF31:
	.string	"_vtable_offset"
.LASF42:
	.string	"FILE"
.LASF54:
	.string	"exit"
.LASF71:
	.string	"DivMethod"
.LASF12:
	.string	"char"
.LASF63:
	.string	"index"
.LASF11:
	.string	"__off64_t"
.LASF16:
	.string	"_IO_read_base"
.LASF55:
	.string	"memcpy"
.LASF24:
	.string	"_IO_save_end"
.LASF78:
	.string	"free"
.LASF39:
	.string	"__pad5"
.LASF65:
	.string	"InsertChain"
.LASF41:
	.string	"_unused2"
.LASF77:
	.string	"stderr"
.LASF70:
	.string	"MultMethod"
.LASF73:
	.string	"FreeChainTable"
.LASF23:
	.string	"_IO_backup_base"
.LASF37:
	.string	"_freeres_list"
.LASF36:
	.string	"_wide_data"
.LASF17:
	.string	"_IO_write_base"
.LASF52:
	.string	"element"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"hash.c"
.LASF1:
	.string	"/mnt/c/Users/Zach/OneDrive/Documents/GitHub/C/cs3050/lab3_hash"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
