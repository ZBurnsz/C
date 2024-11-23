	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/mnt/c/Users/Zach/OneDrive/Documents/GitHub/C/cs3050/lab3_hash" "main.c"
	.globl	FillName
	.type	FillName, @function
FillName:
.LFB0:
	.file 1 "main.c"
	.loc 1 25 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
.LBB2:
	.loc 1 26 11
	movl	$0, -4(%rbp)
	.loc 1 26 2
	jmp	.L2
.L3:
	.loc 1 28 7 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 28 10 discriminator 3
	movzbl	-28(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 26 28 discriminator 3
	addl	$1, -4(%rbp)
.L2:
	.loc 1 26 16 discriminator 1
	cmpl	$5, -4(%rbp)
	jle	.L3
.LBE2:
	.loc 1 32 6
	movq	-24(%rbp), %rax
	addq	$6, %rax
	.loc 1 32 17
	movb	$0, (%rax)
	.loc 1 33 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	FillName, .-FillName
	.globl	FillCustomer
	.type	FillCustomer, @function
FillCustomer:
.LFB1:
	.loc 1 37 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 42 2
	movzbl	cFNameStart.2(%rip), %eax
	movsbl	%al, %edx
	.loc 1 42 20
	movq	-8(%rbp), %rax
	.loc 1 42 2
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FillName
	.loc 1 43 2
	movzbl	cLNameStart.1(%rip), %eax
	movsbl	%al, %eax
	.loc 1 43 20
	movq	-8(%rbp), %rdx
	addq	$7, %rdx
	.loc 1 43 2
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	FillName
	.loc 1 47 13
	movzbl	cFNameStart.2(%rip), %eax
	addl	$1, %eax
	movb	%al, cFNameStart.2(%rip)
	.loc 1 48 17
	movzbl	cFNameStart.2(%rip), %eax
	.loc 1 48 5
	cmpb	$90, %al
	jle	.L5
	.loc 1 50 14
	movb	$65, cFNameStart.2(%rip)
	.loc 1 51 14
	movzbl	cLNameStart.1(%rip), %eax
	addl	$1, %eax
	movb	%al, cLNameStart.1(%rip)
.L5:
	.loc 1 53 17
	movzbl	cLNameStart.1(%rip), %eax
	.loc 1 53 5
	cmpb	$90, %al
	jle	.L6
	.loc 1 53 36 discriminator 1
	movzbl	cLNameStart.1(%rip), %eax
	.loc 1 53 22 discriminator 1
	cmpb	$96, %al
	jg	.L6
	.loc 1 55 14
	movb	$97, cLNameStart.1(%rip)
.L6:
	.loc 1 57 17
	movzbl	cLNameStart.1(%rip), %eax
	.loc 1 57 5
	cmpb	$122, %al
	jle	.L7
	.loc 1 59 14
	movb	$65, cLNameStart.1(%rip)
.L7:
	.loc 1 62 36
	movl	lastAN.0(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, lastAN.0(%rip)
	.loc 1 62 28
	movq	-8(%rbp), %rdx
	movl	%eax, 16(%rdx)
	.loc 1 63 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	FillCustomer, .-FillCustomer
	.globl	FillCustomers
	.type	FillCustomers, @function
FillCustomers:
.LFB2:
	.loc 1 67 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
.LBB3:
	.loc 1 68 11
	movl	$0, -4(%rbp)
	.loc 1 68 2
	jmp	.L9
.L10:
	.loc 1 70 26 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	.loc 1 70 3 discriminator 3
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	FillCustomer
	.loc 1 68 24 discriminator 3
	addl	$1, -4(%rbp)
.L9:
	.loc 1 68 16 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L10
.LBE3:
	.loc 1 72 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	FillCustomers, .-FillCustomers
	.section	.rodata
.LC0:
	.string	"%s %s (%d)\n"
	.text
	.globl	PrintCustomers
	.type	PrintCustomers, @function
PrintCustomers:
.LFB3:
	.loc 1 75 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
.LBB4:
	.loc 1 76 11
	movl	$0, -4(%rbp)
	.loc 1 76 2
	jmp	.L12
.L13:
	.loc 1 81 14 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 78 3 discriminator 3
	movl	16(%rax), %edx
	.loc 1 80 14 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$2, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 80 17 discriminator 3
	leaq	7(%rax), %rsi
	.loc 1 79 14 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$2, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 78 3 discriminator 3
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 76 24 discriminator 3
	addl	$1, -4(%rbp)
.L12:
	.loc 1 76 16 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L13
.LBE4:
	.loc 1 83 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	PrintCustomers, .-PrintCustomers
	.globl	Getkey
	.type	Getkey, @function
Getkey:
.LFB4:
	.loc 1 88 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 89 31
	movzbl	23(%rbp), %eax
	.loc 1 89 6
	movsbl	%al, %eax
	movl	%eax, -4(%rbp)
	.loc 1 90 5
	sall	$8, -4(%rbp)
	.loc 1 91 27
	movzbl	16(%rbp), %eax
	movsbl	%al, %eax
	.loc 1 91 5
	addl	%eax, -4(%rbp)
	.loc 1 92 9
	movl	-4(%rbp), %eax
	.loc 1 93 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Getkey, .-Getkey
	.section	.rodata
.LC1:
	.string	"%d "
	.text
	.globl	PrintCustomerKeys
	.type	PrintCustomerKeys, @function
PrintCustomerKeys:
.LFB5:
	.loc 1 96 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
.LBB5:
	.loc 1 97 11
	movl	$0, -4(%rbp)
	.loc 1 97 2
	jmp	.L17
.L18:
	.loc 1 99 32 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 1 99 3 discriminator 3
	subq	$24, %rsp
	movq	%rsp, %rsi
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movl	16(%rcx), %eax
	movl	%eax, 16(%rsi)
	call	Getkey
	addq	$24, %rsp
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 97 24 discriminator 3
	addl	$1, -4(%rbp)
.L17:
	.loc 1 97 16 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L18
.LBE5:
	.loc 1 101 2
	movl	$10, %edi
	call	putchar@PLT
	.loc 1 102 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	PrintCustomerKeys, .-PrintCustomerKeys
	.section	.rodata
	.align 8
.LC2:
	.string	"\n\nFail Collisions - Division Method:"
	.align 8
.LC3:
	.string	"******* Found %d, Not Found %d *******\n"
	.align 8
.LC4:
	.string	"\n\nFail Collisions - Multiplication Method:"
	.align 8
.LC5:
	.string	"\n\nChain on Collisions - Multiplication Method:"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.loc 1 105 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	-20480(%rsp), %r11
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	subq	$2112, %rsp
	.loc 1 105 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 109 2
	leaq	-20496(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	FillCustomers
	.loc 1 115 2
	leaq	-22496(%rbp), %rax
	movl	$2000, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 119 2
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.LBB6:
	.loc 1 120 11
	movl	$0, -22584(%rbp)
	.loc 1 120 2
	jmp	.L20
.L21:
.LBB7:
	.loc 1 122 13
	subq	$8, %rsp
	movl	-22584(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	leaq	-20496(%rax), %rcx
	subq	$24, %rsp
	movq	%rsp, %rsi
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movl	16(%rcx), %eax
	movl	%eax, 16(%rsi)
	call	Getkey
	addq	$32, %rsp
	movl	%eax, -22532(%rbp)
	.loc 1 124 14
	leaq	-20496(%rbp), %rcx
	movl	-22584(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rsi
	.loc 1 123 11
	movl	-22532(%rbp), %edx
	leaq	-22496(%rbp), %rax
	movq	DivMethod@GOTPCREL(%rip), %rcx
	movq	%rcx, %r9
	movq	%rsi, %r8
	movl	%edx, %ecx
	movl	$100, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	InsertFailCollision@PLT
.LBE7:
	.loc 1 120 28
	addl	$1, -22584(%rbp)
.L20:
	.loc 1 120 16 discriminator 1
	cmpl	$1023, -22584(%rbp)
	jle	.L21
.LBE6:
	.loc 1 131 6
	movl	$0, -22580(%rbp)
	.loc 1 132 6
	movl	$0, -22576(%rbp)
.LBB8:
	.loc 1 133 11
	movl	$0, -22572(%rbp)
	.loc 1 133 2
	jmp	.L22
.L25:
.LBB9:
	.loc 1 135 13
	subq	$8, %rsp
	movl	-22572(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	leaq	-20496(%rax), %rcx
	subq	$24, %rsp
	movq	%rsp, %rsi
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movl	16(%rcx), %eax
	movl	%eax, 16(%rsi)
	call	Getkey
	addq	$32, %rsp
	movl	%eax, -22536(%rbp)
	.loc 1 136 26
	movl	-22536(%rbp), %esi
	leaq	-22496(%rbp), %rax
	movq	DivMethod@GOTPCREL(%rip), %rdx
	movq	%rdx, %rcx
	movl	$20, %edx
	movq	%rax, %rdi
	call	SearchNoCollision@PLT
	movq	%rax, -22504(%rbp)
	.loc 1 137 6
	cmpq	$0, -22504(%rbp)
	je	.L23
	.loc 1 137 26 discriminator 1
	subq	$8, %rsp
	movq	-22504(%rbp), %rcx
	subq	$24, %rsp
	movq	%rsp, %rsi
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movl	16(%rcx), %eax
	movl	%eax, 16(%rsi)
	call	Getkey
	addq	$32, %rsp
	.loc 1 137 23 discriminator 1
	cmpl	%eax, -22536(%rbp)
	jne	.L23
	.loc 1 139 14
	addl	$1, -22580(%rbp)
	jmp	.L24
.L23:
	.loc 1 144 17
	addl	$1, -22576(%rbp)
.L24:
.LBE9:
	.loc 1 133 28 discriminator 2
	addl	$1, -22572(%rbp)
.L22:
	.loc 1 133 16 discriminator 1
	cmpl	$1023, -22572(%rbp)
	jle	.L25
.LBE8:
	.loc 1 148 2
	movl	-22576(%rbp), %edx
	movl	-22580(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 153 2
	leaq	-22496(%rbp), %rax
	movl	$2000, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 156 2
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.LBB10:
	.loc 1 157 11
	movl	$0, -22568(%rbp)
	.loc 1 157 2
	jmp	.L26
.L27:
.LBB11:
	.loc 1 159 13
	subq	$8, %rsp
	movl	-22568(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	leaq	-20496(%rax), %rcx
	subq	$24, %rsp
	movq	%rsp, %rsi
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movl	16(%rcx), %eax
	movl	%eax, 16(%rsi)
	call	Getkey
	addq	$32, %rsp
	movl	%eax, -22540(%rbp)
	.loc 1 161 14
	leaq	-20496(%rbp), %rcx
	movl	-22568(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rsi
	.loc 1 160 11
	movl	-22540(%rbp), %edx
	leaq	-22496(%rbp), %rax
	movq	MultMethod@GOTPCREL(%rip), %rcx
	movq	%rcx, %r9
	movq	%rsi, %r8
	movl	%edx, %ecx
	movl	$100, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	InsertFailCollision@PLT
.LBE11:
	.loc 1 157 28
	addl	$1, -22568(%rbp)
.L26:
	.loc 1 157 16 discriminator 1
	cmpl	$1023, -22568(%rbp)
	jle	.L27
.LBE10:
	.loc 1 168 12
	movl	$0, -22580(%rbp)
	.loc 1 169 15
	movl	$0, -22576(%rbp)
.LBB12:
	.loc 1 170 11
	movl	$0, -22564(%rbp)
	.loc 1 170 2
	jmp	.L28
.L31:
.LBB13:
	.loc 1 172 13
	subq	$8, %rsp
	movl	-22564(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	leaq	-20496(%rax), %rcx
	subq	$24, %rsp
	movq	%rsp, %rsi
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movl	16(%rcx), %eax
	movl	%eax, 16(%rsi)
	call	Getkey
	addq	$32, %rsp
	movl	%eax, -22544(%rbp)
	.loc 1 173 26
	movl	-22544(%rbp), %esi
	leaq	-22496(%rbp), %rax
	movq	MultMethod@GOTPCREL(%rip), %rdx
	movq	%rdx, %rcx
	movl	$20, %edx
	movq	%rax, %rdi
	call	SearchNoCollision@PLT
	movq	%rax, -22512(%rbp)
	.loc 1 174 6
	cmpq	$0, -22512(%rbp)
	je	.L29
	.loc 1 174 26 discriminator 1
	subq	$8, %rsp
	movq	-22512(%rbp), %rcx
	subq	$24, %rsp
	movq	%rsp, %rsi
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movl	16(%rcx), %eax
	movl	%eax, 16(%rsi)
	call	Getkey
	addq	$32, %rsp
	.loc 1 174 23 discriminator 1
	cmpl	%eax, -22544(%rbp)
	jne	.L29
	.loc 1 176 14
	addl	$1, -22580(%rbp)
	jmp	.L30
.L29:
	.loc 1 181 17
	addl	$1, -22576(%rbp)
.L30:
.LBE13:
	.loc 1 170 28 discriminator 2
	addl	$1, -22564(%rbp)
.L28:
	.loc 1 170 16 discriminator 1
	cmpl	$1023, -22564(%rbp)
	jle	.L31
.LBE12:
	.loc 1 185 2
	movl	-22576(%rbp), %edx
	movl	-22580(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 191 20
	movl	$100, %edi
	call	AllocateChainTable@PLT
	movq	%rax, -22528(%rbp)
	.loc 1 194 2
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.LBB14:
	.loc 1 195 11
	movl	$0, -22560(%rbp)
	.loc 1 195 2
	jmp	.L32
.L33:
.LBB15:
	.loc 1 197 13
	subq	$8, %rsp
	movl	-22560(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	leaq	-20496(%rax), %rcx
	subq	$24, %rsp
	movq	%rsp, %rsi
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movl	16(%rcx), %eax
	movl	%eax, 16(%rsi)
	call	Getkey
	addq	$32, %rsp
	movl	%eax, -22548(%rbp)
	.loc 1 200 14
	leaq	-20496(%rbp), %rcx
	movl	-22560(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rsi
	.loc 1 199 11
	movl	-22548(%rbp), %edx
	movq	-22528(%rbp), %rax
	movq	MultMethod@GOTPCREL(%rip), %rcx
	movq	%rcx, %r9
	movq	%rsi, %r8
	movl	%edx, %ecx
	movl	$100, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	InsertChain@PLT
.LBE15:
	.loc 1 195 28
	addl	$1, -22560(%rbp)
.L32:
	.loc 1 195 16 discriminator 1
	cmpl	$1023, -22560(%rbp)
	jle	.L33
.LBE14:
	.loc 1 209 12
	movl	$0, -22580(%rbp)
	.loc 1 210 15
	movl	$0, -22576(%rbp)
.LBB16:
	.loc 1 211 11
	movl	$0, -22556(%rbp)
	.loc 1 211 2
	jmp	.L34
.L37:
.LBB17:
	.loc 1 213 13
	subq	$8, %rsp
	movl	-22556(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	leaq	-20496(%rax), %rcx
	subq	$24, %rsp
	movq	%rsp, %rsi
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movl	16(%rcx), %eax
	movl	%eax, 16(%rsi)
	call	Getkey
	addq	$32, %rsp
	movl	%eax, -22552(%rbp)
	.loc 1 214 26
	movl	-22552(%rbp), %esi
	movq	-22528(%rbp), %rax
	movq	MultMethod@GOTPCREL(%rip), %rdx
	movq	%rdx, %rcx
	movl	$20, %edx
	movq	%rax, %rdi
	call	SearchChain@PLT
	movq	%rax, -22520(%rbp)
	.loc 1 215 6
	cmpq	$0, -22520(%rbp)
	je	.L35
	.loc 1 215 26 discriminator 1
	subq	$8, %rsp
	movq	-22520(%rbp), %rcx
	subq	$24, %rsp
	movq	%rsp, %rsi
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movl	16(%rcx), %eax
	movl	%eax, 16(%rsi)
	call	Getkey
	addq	$32, %rsp
	.loc 1 215 23 discriminator 1
	cmpl	%eax, -22552(%rbp)
	jne	.L35
	.loc 1 217 14
	addl	$1, -22580(%rbp)
	jmp	.L36
.L35:
	.loc 1 222 17
	addl	$1, -22576(%rbp)
.L36:
.LBE17:
	.loc 1 211 28 discriminator 2
	addl	$1, -22556(%rbp)
.L34:
	.loc 1 211 16 discriminator 1
	cmpl	$1023, -22556(%rbp)
	jle	.L37
.LBE16:
	.loc 1 226 2
	movl	-22576(%rbp), %edx
	movl	-22580(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 230 2
	movq	-22528(%rbp), %rax
	movq	%rax, %rdi
	call	FreeChainTable@PLT
	movl	$0, %eax
	.loc 1 231 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L39
	call	__stack_chk_fail@PLT
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.data
	.type	cFNameStart.2, @object
	.size	cFNameStart.2, 1
cFNameStart.2:
	.byte	65
	.type	cLNameStart.1, @object
	.size	cLNameStart.1, 1
cLNameStart.1:
	.byte	65
	.local	lastAN.0
	.comm	lastAN.0,4,4
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 3 "hash.h"
	.file 4 "/usr/include/string.h"
	.file 5 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x686
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xf
	.long	.LASF43
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xd
	.long	.LASF13
	.byte	0x2
	.byte	0xd1
	.byte	0x17
	.long	0x3a
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x10
	.byte	0x8
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x9
	.long	0x79
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x12
	.long	0x79
	.uleb128 0x9
	.long	0x80
	.uleb128 0x13
	.byte	0x14
	.byte	0x1
	.byte	0xf
	.byte	0x9
	.long	0xb8
	.uleb128 0xb
	.long	.LASF10
	.byte	0x11
	.byte	0x7
	.long	0xb8
	.byte	0
	.uleb128 0xb
	.long	.LASF11
	.byte	0x12
	.byte	0x7
	.long	0xb8
	.byte	0x7
	.uleb128 0xb
	.long	.LASF12
	.byte	0x13
	.byte	0x6
	.long	0x66
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.long	0x79
	.long	0xc8
	.uleb128 0xe
	.long	0x3a
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.long	.LASF14
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.long	0x8a
	.uleb128 0x14
	.long	.LASF44
	.byte	0x3
	.byte	0x10
	.byte	0x6
	.long	0xe6
	.uleb128 0x1
	.long	0x48
	.byte	0
	.uleb128 0x7
	.long	.LASF15
	.byte	0x3
	.byte	0x13
	.byte	0x8
	.long	0x48
	.long	0x10b
	.uleb128 0x1
	.long	0x48
	.uleb128 0x1
	.long	0x66
	.uleb128 0x1
	.long	0x66
	.uleb128 0x1
	.long	0x10b
	.byte	0
	.uleb128 0x9
	.long	0x110
	.uleb128 0x15
	.long	0x66
	.long	0x11f
	.uleb128 0x1
	.long	0x66
	.byte	0
	.uleb128 0x7
	.long	.LASF16
	.byte	0x3
	.byte	0x11
	.byte	0x5
	.long	0x66
	.long	0x14e
	.uleb128 0x1
	.long	0x48
	.uleb128 0x1
	.long	0x66
	.uleb128 0x1
	.long	0x66
	.uleb128 0x1
	.long	0x66
	.uleb128 0x1
	.long	0x48
	.uleb128 0x1
	.long	0x10b
	.byte	0
	.uleb128 0x7
	.long	.LASF17
	.byte	0x3
	.byte	0xf
	.byte	0x8
	.long	0x48
	.long	0x164
	.uleb128 0x1
	.long	0x66
	.byte	0
	.uleb128 0x7
	.long	.LASF18
	.byte	0x3
	.byte	0xd
	.byte	0x5
	.long	0x66
	.long	0x17a
	.uleb128 0x1
	.long	0x66
	.byte	0
	.uleb128 0x7
	.long	.LASF19
	.byte	0x3
	.byte	0xb
	.byte	0x8
	.long	0x48
	.long	0x19f
	.uleb128 0x1
	.long	0x48
	.uleb128 0x1
	.long	0x66
	.uleb128 0x1
	.long	0x66
	.uleb128 0x1
	.long	0x10b
	.byte	0
	.uleb128 0x7
	.long	.LASF20
	.byte	0x3
	.byte	0xc
	.byte	0x5
	.long	0x66
	.long	0x1b5
	.uleb128 0x1
	.long	0x66
	.byte	0
	.uleb128 0x7
	.long	.LASF21
	.byte	0x3
	.byte	0x9
	.byte	0x5
	.long	0x66
	.long	0x1e4
	.uleb128 0x1
	.long	0x48
	.uleb128 0x1
	.long	0x66
	.uleb128 0x1
	.long	0x66
	.uleb128 0x1
	.long	0x66
	.uleb128 0x1
	.long	0x48
	.uleb128 0x1
	.long	0x10b
	.byte	0
	.uleb128 0x7
	.long	.LASF22
	.byte	0x4
	.byte	0x3d
	.byte	0xe
	.long	0x48
	.long	0x204
	.uleb128 0x1
	.long	0x48
	.uleb128 0x1
	.long	0x66
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x16
	.long	.LASF23
	.byte	0x5
	.value	0x164
	.byte	0xc
	.long	0x66
	.long	0x21c
	.uleb128 0x1
	.long	0x85
	.uleb128 0x17
	.byte	0
	.uleb128 0x18
	.long	.LASF31
	.byte	0x1
	.byte	0x68
	.byte	0x5
	.long	0x66
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x45f
	.uleb128 0x3
	.long	.LASF24
	.byte	0x6b
	.byte	0xb
	.long	0x45f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20512
	.uleb128 0x3
	.long	.LASF25
	.byte	0x72
	.byte	0xb
	.long	0x470
	.uleb128 0x4
	.byte	0x91
	.sleb128 -22512
	.uleb128 0x3
	.long	.LASF26
	.byte	0x83
	.byte	0x6
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -22596
	.uleb128 0x3
	.long	.LASF27
	.byte	0x84
	.byte	0x6
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -22592
	.uleb128 0x3
	.long	.LASF28
	.byte	0xbf
	.byte	0x9
	.long	0x48
	.uleb128 0x4
	.byte	0x91
	.sleb128 -22544
	.uleb128 0x8
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x2d4
	.uleb128 0x2
	.string	"i"
	.byte	0x78
	.byte	0xb
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -22600
	.uleb128 0x4
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2
	.string	"key"
	.byte	0x7a
	.byte	0x7
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -22548
	.byte	0
	.byte	0
	.uleb128 0x8
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x32a
	.uleb128 0x2
	.string	"i"
	.byte	0x85
	.byte	0xb
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -22588
	.uleb128 0x4
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2
	.string	"key"
	.byte	0x87
	.byte	0x7
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -22552
	.uleb128 0x3
	.long	.LASF29
	.byte	0x88
	.byte	0xe
	.long	0x480
	.uleb128 0x4
	.byte	0x91
	.sleb128 -22520
	.byte	0
	.byte	0
	.uleb128 0x8
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x370
	.uleb128 0x2
	.string	"i"
	.byte	0x9d
	.byte	0xb
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -22584
	.uleb128 0x4
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2
	.string	"key"
	.byte	0x9f
	.byte	0x7
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -22556
	.byte	0
	.byte	0
	.uleb128 0x8
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x3c6
	.uleb128 0x2
	.string	"i"
	.byte	0xaa
	.byte	0xb
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -22580
	.uleb128 0x4
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2
	.string	"key"
	.byte	0xac
	.byte	0x7
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -22560
	.uleb128 0x3
	.long	.LASF29
	.byte	0xad
	.byte	0xe
	.long	0x480
	.uleb128 0x4
	.byte	0x91
	.sleb128 -22528
	.byte	0
	.byte	0
	.uleb128 0x8
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x40c
	.uleb128 0x2
	.string	"i"
	.byte	0xc3
	.byte	0xb
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -22576
	.uleb128 0x4
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2
	.string	"key"
	.byte	0xc5
	.byte	0x7
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -22564
	.byte	0
	.byte	0
	.uleb128 0x4
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2
	.string	"i"
	.byte	0xd3
	.byte	0xb
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -22572
	.uleb128 0x4
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2
	.string	"key"
	.byte	0xd5
	.byte	0x7
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -22568
	.uleb128 0x3
	.long	.LASF29
	.byte	0xd6
	.byte	0xe
	.long	0x480
	.uleb128 0x4
	.byte	0x91
	.sleb128 -22536
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0xc8
	.long	0x470
	.uleb128 0x19
	.long	0x3a
	.value	0x3ff
	.byte	0
	.uleb128 0xc
	.long	0xc8
	.long	0x480
	.uleb128 0xe
	.long	0x3a
	.byte	0x63
	.byte	0
	.uleb128 0x9
	.long	0xc8
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5f
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x4dc
	.uleb128 0x5
	.long	.LASF24
	.byte	0x5f
	.byte	0x21
	.long	0x480
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF30
	.byte	0x5f
	.byte	0x32
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2
	.string	"i"
	.byte	0x61
	.byte	0xb
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF32
	.byte	0x1
	.byte	0x57
	.byte	0x5
	.long	0x66
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x51b
	.uleb128 0x5
	.long	.LASF33
	.byte	0x57
	.byte	0x15
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.string	"key"
	.byte	0x59
	.byte	0x6
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x4a
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x572
	.uleb128 0x5
	.long	.LASF24
	.byte	0x4a
	.byte	0x1e
	.long	0x480
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF30
	.byte	0x4a
	.byte	0x2f
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2
	.string	"i"
	.byte	0x4c
	.byte	0xb
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x42
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c9
	.uleb128 0x5
	.long	.LASF24
	.byte	0x42
	.byte	0x1d
	.long	0x480
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF30
	.byte	0x42
	.byte	0x2e
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2
	.string	"i"
	.byte	0x44
	.byte	0xb
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x24
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x633
	.uleb128 0x5
	.long	.LASF38
	.byte	0x24
	.byte	0x1e
	.long	0x480
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.long	.LASF39
	.byte	0x26
	.byte	0xd
	.long	0x66
	.uleb128 0x9
	.byte	0x3
	.quad	lastAN.0
	.uleb128 0x3
	.long	.LASF40
	.byte	0x27
	.byte	0xe
	.long	0x79
	.uleb128 0x9
	.byte	0x3
	.quad	cFNameStart.2
	.uleb128 0x3
	.long	.LASF41
	.byte	0x28
	.byte	0xe
	.long	0x79
	.uleb128 0x9
	.byte	0x3
	.quad	cLNameStart.1
	.byte	0
	.uleb128 0x1b
	.long	.LASF45
	.byte	0x1
	.byte	0x18
	.byte	0x6
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.long	.LASF42
	.byte	0x18
	.byte	0x16
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"cur"
	.byte	0x1
	.byte	0x18
	.byte	0x21
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2
	.string	"i"
	.byte	0x1a
	.byte	0xb
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.sleb128 6
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
	.uleb128 0xb
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x14
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x7a
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
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
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
.LASF35:
	.string	"PrintCustomers"
.LASF29:
	.string	"custFound"
.LASF41:
	.string	"cLNameStart"
.LASF34:
	.string	"PrintCustomerKeys"
.LASF7:
	.string	"short int"
.LASF13:
	.string	"size_t"
.LASF40:
	.string	"cFNameStart"
.LASF39:
	.string	"lastAN"
.LASF31:
	.string	"main"
.LASF44:
	.string	"FreeChainTable"
.LASF17:
	.string	"AllocateChainTable"
.LASF37:
	.string	"FillCustomer"
.LASF45:
	.string	"FillName"
.LASF22:
	.string	"memset"
.LASF16:
	.string	"InsertChain"
.LASF8:
	.string	"long int"
.LASF32:
	.string	"Getkey"
.LASF23:
	.string	"printf"
.LASF14:
	.string	"Customer"
.LASF42:
	.string	"name"
.LASF4:
	.string	"unsigned char"
.LASF6:
	.string	"signed char"
.LASF15:
	.string	"SearchChain"
.LASF3:
	.string	"unsigned int"
.LASF25:
	.string	"hashtable"
.LASF38:
	.string	"pCustomer"
.LASF5:
	.string	"short unsigned int"
.LASF20:
	.string	"DivMethod"
.LASF26:
	.string	"countFound"
.LASF43:
	.string	"GNU C17 11.4.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF9:
	.string	"char"
.LASF27:
	.string	"countNotFound"
.LASF28:
	.string	"newtable"
.LASF2:
	.string	"long unsigned int"
.LASF30:
	.string	"count"
.LASF12:
	.string	"iAccountNumber"
.LASF24:
	.string	"customers"
.LASF10:
	.string	"szFirstName"
.LASF21:
	.string	"InsertFailCollision"
.LASF33:
	.string	"customer"
.LASF11:
	.string	"szLastName"
.LASF36:
	.string	"FillCustomers"
.LASF18:
	.string	"MultMethod"
.LASF19:
	.string	"SearchNoCollision"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"main.c"
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
