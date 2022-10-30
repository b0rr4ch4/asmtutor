; Olá Mundo!! (sem erro)
; $ nasm -f elf 02.asm && ld -m elf_i386 02.o -o ./02 && rm 02.o

global _start

SECTION .data
	msg db 'Olá Mundo!!', 0Ah	; 'Olá Mundo!!\n'

SECTION .text
	_start:
		mov ebx, 1		; ebx (arg0) = file descriptor
		mov ecx, msg	; ecx (arg1) = endereço da string
		mov edx, 13		; edx (arg2) = tamanho da string
		mov eax, 4		; eax = código 4 para syscall write
		int 80h			; invoca o eax (write)
		
		mov ebx, 0		; ebx (arg0) valor 0
		mov eax, 1		; eax = código 1 para syscall exit
		int 80h			; invoca o eax (exit)