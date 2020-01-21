section .text

global _ft_strlen

_ft_strlen:
	xor rcx, rcx
	jmp bcl

bcl:
	mov al, [rdi + rcx]
	cmp al, 0
	je end
	inc rcx
	jmp bcl

end:
	mov rax, rcx
	ret
