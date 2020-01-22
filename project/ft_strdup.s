section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_strcpy

_ft_strdup:
	cmp rdi, 0x0		;verifie que la string est pas nulle
	je error			;sinon error 
	call _ft_strlen		;call ft_strlen, envoie rdi
	inc rax				;ft_strlen ret dans rax, jincremente rax de 1 pour avoir \0
	push rdi			;remonte rdi en haut pour call malloc, sauvegarde rdi temporairement
	mov rdi, rax		;mov le resultat de strlen dans rdi pour call malloc
	call _malloc		;call malloc
	cmp rax, 0x0		;verif le resultat de malloc si pas error
	je error			;si error call error
	pop rdi				;recupere rdi de base
	mov rsi, rdi		;enregistre la chaine dans rsi (2 argument pour ft_strcpy)
	mov rdi, rax		;rdi pointe sur le pointeur retourne par malloc (rdi == 1er argument ft_strcpy)
	call _ft_strcpy		;le resultat de ft_strcpy est directement enregistre dans rax
	ret					;return

error:
	mov rax, 0x0		;met la valeur de retour a 0
	ret					;ret