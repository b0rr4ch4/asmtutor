; Olá Mundo!! (com erro)
; $ nasm -f elf 01.asm && ld -m elf_i386 01.o -o ./01 && rm 01.o

SECTION .data
msg	db	'Olá Mundo!!', 0Ah	; 'HOlá Mundo!!\n'

SECTION .text
global	_start

_start:
	mov	ebx, 1		;arg0
	mov ecx, msg	;arg1 move o endereço de memoria da msg para dentro do ecx
	mov	edx, 12		;arg2 número de bytes que serão escritos. Caracter a caracter.
	mov	eax, 4		;SYS_WRITE (kernel opcode 4)
	int	80h			;realiza a invocação do eax (kernel opcode 4)