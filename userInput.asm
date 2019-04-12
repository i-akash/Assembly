section .data
	text1 db "what is your name?",10
	text2 db "Hello, "
section .bss
	name resb 16

section .text
	global _start

_start:
	call _askName
	call _getName
	call _greet

	mov rax,60
	mov rdi,0
	syscall

_askName:
	mov rax,1
	mov rdi,1
	mov rsi,text1
	mov rdx,19
	syscall
	ret

_getName:
	mov rax,0
	mov rdi,0
	mov rsi,name
	mov rdx,16
	syscall
	ret

_greet:
	mov rax,1
	mov rdi,1
	mov rsi,text2
	mov rdx,23
	syscall
	ret

