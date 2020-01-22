section .text
	global _ft_read

_ft_read:
	mov rax, 0x2000003	;appel syscall numero3, ce nombre car mac...
	syscall				;appel syscall
	ret					;retourne le retour de read