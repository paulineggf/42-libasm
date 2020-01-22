section .text
	global _ft_strcpy

_ft_strcpy:
	xor rcx, rcx			;initialise rcx a 0 - rcx registre pour lincrementation (type i)

bcl:
	mov al, [rsi + rcx]		;move dans al l'octet[rcx] de rsi
	mov [rdi + rcx], al		;move al l'octet[rcx] de rdi
	cmp al, 0				;compare al a 0 pour savoir si fin de chaine
	je end					;si egaux appel fct end
	inc rcx					;inc rcx
	jmp bcl					;boucle en rappelant bcl

end:
	mov rax, rdi			;met le resultat rdi dans le registre de retour rax
	ret						;ret
