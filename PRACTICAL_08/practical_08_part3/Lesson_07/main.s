	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"false"
.LC1:
	.string	"true"
.LC2:
	.string	"a > b Example: %s\n"
.LC3:
	.string	"a < b Example: %s\n"
.LC4:
	.string	"a >= b Example: %s\n"
.LC5:
	.string	"a <= b Example: %s\n"
.LC6:
	.string	"a == b Example: %s\n"
.LC7:
	.string	"a != b Example: %s\n"
.LC8:
	.string	"a && b Example: %s\n"
.LC9:
	.string	"a || b Example: %s\n"
.LC10:
	.string	"!a Example: %s\n"
.LC11:
	.string	"a!! Example: %s\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$10, -8(%rbp)
	movl	$20, -4(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	setg	%al
	movb	%al, -9(%rbp)
	movzbl	-9(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L2
	leaq	.LC0(%rip), %rax
	jmp	.L3
.L2:
	leaq	.LC1(%rip), %rax
.L3:
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	setl	%al
	movb	%al, -9(%rbp)
	movzbl	-9(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L4
	leaq	.LC0(%rip), %rax
	jmp	.L5
.L4:
	leaq	.LC1(%rip), %rax
.L5:
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	setge	%al
	movb	%al, -9(%rbp)
	movzbl	-9(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L6
	leaq	.LC0(%rip), %rax
	jmp	.L7
.L6:
	leaq	.LC1(%rip), %rax
.L7:
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	setle	%al
	movb	%al, -9(%rbp)
	movzbl	-9(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L8
	leaq	.LC0(%rip), %rax
	jmp	.L9
.L8:
	leaq	.LC1(%rip), %rax
.L9:
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	sete	%al
	movb	%al, -9(%rbp)
	movzbl	-9(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L10
	leaq	.LC0(%rip), %rax
	jmp	.L11
.L10:
	leaq	.LC1(%rip), %rax
.L11:
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	setne	%al
	movb	%al, -9(%rbp)
	movzbl	-9(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L12
	leaq	.LC0(%rip), %rax
	jmp	.L13
.L12:
	leaq	.LC1(%rip), %rax
.L13:
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$0, -8(%rbp)
	je	.L14
	cmpl	$0, -4(%rbp)
	je	.L14
	movl	$1, %eax
	jmp	.L15
.L14:
	movl	$0, %eax
.L15:
	movb	%al, -9(%rbp)
	andb	$1, -9(%rbp)
	movzbl	-9(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L16
	leaq	.LC0(%rip), %rax
	jmp	.L17
.L16:
	leaq	.LC1(%rip), %rax
.L17:
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$0, -8(%rbp)
	jne	.L18
	cmpl	$0, -4(%rbp)
	je	.L19
.L18:
	movl	$1, %eax
	jmp	.L20
.L19:
	movl	$0, %eax
.L20:
	movb	%al, -9(%rbp)
	andb	$1, -9(%rbp)
	movzbl	-9(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L21
	leaq	.LC0(%rip), %rax
	jmp	.L22
.L21:
	leaq	.LC1(%rip), %rax
.L22:
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$0, -8(%rbp)
	sete	%al
	movb	%al, -9(%rbp)
	movzbl	-9(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L23
	leaq	.LC0(%rip), %rax
	jmp	.L24
.L23:
	leaq	.LC1(%rip), %rax
.L24:
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$0, -8(%rbp)
	setne	%al
	movb	%al, -9(%rbp)
	movzbl	-9(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L25
	leaq	.LC0(%rip), %rax
	jmp	.L26
.L25:
	leaq	.LC1(%rip), %rax
.L26:
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
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
