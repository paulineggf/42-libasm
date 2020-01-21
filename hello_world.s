BITS 64

section .bss
	a resb 256

section .data
	hello db `hello world\n`
	hello_len equ $-hello

global main

section .text

main:
	mov eax, 1
	mov edi, 1
	mov esi, hello
	mov edx, hello_len
	syscall
	mov rax, 123
	mov [a], rax
	mov rax, 60
	mov rdi, 0
	syscall
