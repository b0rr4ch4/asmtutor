# **Lição 2**
## **Olá Mundo!**

Criar um programa que escreva na tela **Olá mundo!!** com uma quebra de linha sem dar erro de segmentação

> ### x86
> ```asm
> global _start
> 
> SECTION .data
>   msg db 'Olá Mundo!!', 0Ah    ; 'Olá Mundo!!\n'
> 
> SECTION .text
>   _start:
>       mov ebx, 1      ; ebx (arg0) = file descriptor
>       mov ecx, msg    ; ecx (arg1) = endereço da string
>       mov edx, 13     ; edx (arg2) = tamanho da string
>       mov eax, 4      ; eax = código 4 para syscall write
>       int 80h         ; invoca o eax (write)
> 
>       mov ebx, 0      ; ebx (arg0) valor 0
>       mov eax, 1      ; eax = código 1 para syscall exit
>       int 80h         ; invoca o eax (exit)
> ```


> ### x86_64
> ```asm
> global _start
> 
> SECTION .data
>   msg db 'Olá Mundo!!', 0Ah    ; 'Olá Mundo!!\n'
> 
> SECTION .text
>   _start:
>       mov rdi, 0      ; rdi (arg0) = file descriptor
>       mov rsi, msg    ; rsi (arg1) = endereço da string
>       mov rdx, 13     ; rdx (arg2) = tamanho da string
>       mov rax, 1      ; rax = código 1 para syscall write
>       syscall         ; invoca o rax (write)
> 
>       mov rdi, 0      ; rdi (arg0) = valor de retorno 0 (0=sucesso | diferente de 0=erro)
>       mov rax, 60     ; rax = código 60 para syscall exit
>       syscall         ; invoca o rax (exit)
> ```

***
#### **Referências:** <br>
[Lesson 2 asmtutor](https://asmtutor.com/#lesson2)<br>
[Linux System Call Table x86](https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md#x86-32_bit)<br>
[Linux System Call Table x86_64](https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md#x86_64-64_bit)