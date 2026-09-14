	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"false"
.LC1:
	.string	"true"
.LC2:
	.string	"a & b Example: %s\n"
.LC3:
	.string	"a | b Example: %s\n"
.LC4:
	.string	"a ^ b Example: %s\n"
.LC5:
	.string	"a << b Example: %d\n"
.LC6:
	.string	"a >> b Example: %d\n"
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
	movl	$1, -12(%rbp)
	movl	$0, -8(%rbp)
	movl	-12(%rbp), %eax
	andl	-8(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -13(%rbp)
	movzbl	-13(%rbp), %eax
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
	movl	-12(%rbp), %eax
	orl	-8(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -13(%rbp)
	movzbl	-13(%rbp), %eax
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
	movl	-12(%rbp), %eax
	xorl	-8(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -13(%rbp)
	movzbl	-13(%rbp), %eax
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
	movl	-12(%rbp), %eax
	movl	$15, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
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
