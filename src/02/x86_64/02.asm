; Olá Mundo!! (com erro)
; $ nasm -f elf64 02.asm && ld 02.o -o ./02 && rm 02.o

global _start

SECTION .data
	msg db 'Olá Mundo!!', 0Ah	; 'Olá Mundo!!\n'

SECTION .text
	_start:
		mov rdi, 0		; rdi (arg0) = file descriptor
		mov rsi, msg	; rsi (arg1) = endereço da string
		mov rdx, 13		; rdx (arg2) = tamanho da string
		mov rax, 1		; rax = código 1 para syscall write
		syscall			; invoca o rax (write)

        mov rdi, 0		; rdi (arg0) = valor de retorno 0 (0=sucesso | diferente de 0=erro)
		mov rax, 60		; rax = código 60 para syscall exit
		syscall			; invoca o rax (exit)