# **Lição 1**
## **Olá Mundo!**

Criar um programa que escreva na tela **Olá mundo!!** com uma quebra de linha

> ### x86
> ```asm
> SECTION .data
> msg	db	'Olá Mundo!!', 0Ah
> 
> SECTION .text
> global	_start
> 
> _start:
> 	mov	ebx, 1
> 	mov ecx, msg
> 	mov	edx, 12
> 	mov	eax, 4
> 	int	80h
> ```

***
#### **Referências:** <br>
[Lesson 1 asmtutor](https://asmtutor.com/#lesson1)