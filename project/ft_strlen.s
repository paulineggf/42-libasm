section .text
	global _ft_strlen

_ft_strlen:
	xor rcx, rcx			;initialise rcx a 0 - rcx registre pour lincrementation (type i)

bcl:
	mov al, [rdi + rcx]		;move rdi + rcx (i) dans al
	cmp al, 0				;compare al a 0 pour savoir si fin de chaine
	je end					;si egal a 0 alors appel la fct end
	inc rcx					;inc rcx
	jmp bcl		 			;boucle bcl

end:
	mov rax, rcx			;met rcx (resultat taille chaine) dans le registre de retour rax
	ret						;return
