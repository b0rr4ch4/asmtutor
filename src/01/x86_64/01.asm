; Olá Mundo!! (com erro)
; $ nasm -f elf64 01.asm && ld 01.o -o ./01 && rm 01.o

global	_start

SECTION .data
    msg	db	'Olá Mundo!!', 0Ah	; 'Olá Mundo!!\n'

SECTION .text
    _start:
    	mov	rdi, 0		; rdi (arg0) = file descriptor
        mov rsi, msg	; rsi (arg1) = endereço da string
        mov	rdx, 13		; rdx (arg2) = tamanho da string
        mov	rax, 1		; rax = código 1 para syscall write
        syscall			; invoca o rax (write)