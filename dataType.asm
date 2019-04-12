
SYS_exit equ 60


section .data
	num1 dq 99
	num2 dq 100
    result dq 0


section .text 
	global _start

_start:

	mov rax,qword [num1]
	add rax,qword [num2]
	mov qword [result],rax

    mov rax,SYS_exit
    syscall
 