section .text
	global _ft_write

_ft_write:
	mov rax, 0x2000004 		;appel syscall numero4, ce nombre car mac...
	syscall					;appel syscall
	ret						;retourne le retour de write


