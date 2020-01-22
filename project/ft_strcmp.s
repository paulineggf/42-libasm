section .text
	global _ft_strcmp

_ft_strcmp:
		xor rax, rax
loop:
		mov dl, byte[rdi] 		;rdi = dest et rsi = src --> met le dernier octet de rdi dans le registre al
		cmp dl, byte[rsi]		;compare al a loctet de rsi (src)
		jne not_eq			;si ils ne sont pas egaux appel de la fct not_eq
		cmp byte[rdi], 0		;sinon compare l'octet de rdi a 0 pour savoir si fin de chaine
		je eq				;si egaux appel de la fct eq
		inc rdi				;sinon inc rdi (dest)
		inc rsi				;inc rsi (src)
		jmp loop			;boucle qui rappel la fct loop

not_eq:
		cmp dl, byte[rsi]	;soustrait al a loctet rsi
		jl inf
		cmp dl, byte[rsi]
		jg sup

eq:
		mov rax, 0			;met la valeur de renvoie a Null
		ret

inf:
		sub rax, 1
		ret

sup:
		add rax, 1
		ret


