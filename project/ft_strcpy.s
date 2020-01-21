section .text

global _ft_strcpy

_ft_strcpy:
	xor rcx, rcx
	jmp bcl

bcl:
	mov al, [rsi + rcx]
	mov [rdi + rcx], al
	cmp al, 0
	je end
	inc rcx
	jmp bcl

end:
	mov rax, rdi
	ret
