

section .data
	name db '    m akash',10


section .text
	global _start

_start:
	mov rax,4
	mov rbx,1
	mov rdx,12
	mov rcx,name
	int 0x80

    mov [name], dword 'utto'

    mov rax,4
    mov rbx,1
    mov rcx,name
    mov rdx,12
    int 0x80

    mov rax,1
    int 0x80
