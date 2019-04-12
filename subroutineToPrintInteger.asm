section.data
	digit db 0,10

section .text
	global _start

_start:
	mov rax,20
	mov rbx,2
    div rbx
    push 10

    call _print
    mov rax,60
    mov rdi,0
    syscall


_print:
    mov rdx,0
	mov rbx,10
	div rbx
    push rdx
    _printDigit
    cmp rax,0
    jne _print
    ret



_printDigit:
	add rax,48
	mov [digit],al
	mov rax,1
	mov rdi,1
	mov rsi,digit
	mov rdx,2
	syscall
	ret
