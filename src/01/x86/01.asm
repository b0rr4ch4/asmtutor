; Olá Mundo!! (com erro)
; $ nasm -f elf 01.asm && ld -m elf_i386 01.o -o ./01 && rm 01.o

global	_start

SECTION .data
	msg	db	'Olá Mundo!!', 0Ah	; 'Olá Mundo!!\n'

SECTION .text
	_start:
		mov	ebx, 1		; ebx (arg0) = file descriptor
		mov ecx, msg	; ecx (arg1) = endereço da string
		mov	edx, 13		; edx (arg2) = tamanho da string
		mov	eax, 4		; eax = código 4 para syscall write
		int	80h			; invoca o eax (write)