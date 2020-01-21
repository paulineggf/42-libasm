;	Compilation : nasm -f macho test.s && ld -macosx_version_min 10.7.0 -o test test.o && ./test

;	Intel instruction eax, 0x1

;	[Segment]
;	.bss = variables non initialisees : int a; == int a = 0; || char buf[256];
;	.data = variables initialisees : int a = 1;
;	.text = code executable : printf("%d", a);

;	[Registres]
;	ax -> Eax (Extended ax) -> rax = Registre d'accumulation, operations mathematiques
;	bx -> Ebx -> rbx = ?
;	cx -> Ecx -> rcx = Compteur pour les boucles
;	dx -> Edx -> rdx = S'incremente pour parcourir un tableau de caractere
;	si -> Esi -> rsi = Mettre la chaine de caractere src
;	di -> Edi -> rdi = Mettre la chaine de caractere dest
;	sp -> Esp -> rsi = Manipuler la stack  
;	bp -> Ebp -> rsp = Manipuler la stack
;	ip -> Eip -> rip = Manipuler la stack

;	rax = 64bits
;	rcx = 64bits, utilise pour incrementer
;	rdx = 64bits, utilise pour stocker des valeurs
;	eax = 32bits, partie basse de rax
;	ax  = 16bits, partie basse de eax
;	ah  = 8bits, partie haute de ax
;	al  = 8bits, partie basse de ax

;	ebp = pointeur du haut de la pile (adresse haute = bas de la pile)
;	esp = pointeur du bas de la pile (adresse basse = haut de la pile)

;	[Instructions]
;	mov = met une valeur dans un registre
;	db  = declare un byte (octet)

;	resb -> alloue b = 1bit; w = 2bits; d = 4bits; q = 8bits  

;	gcc -L. lasm main.c libasm.a
