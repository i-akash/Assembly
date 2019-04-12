
SYS_WRITE equ 1
STD_OUT equ 1
SYS_ERR equ 60


section .data
	message db "welcome to assembly macros ..!!",10

section .text
	global _start


%macro _exit 0
	mov rax,SYS_ERR
	mov rdi,0
	syscall
%endmacro

%macro _print 2
	mov rax,SYS_WRITE
	mov rdi,STD_OUT
	mov rsi,%1
	mov rdx,%2
	syscall
%endmacro


_start:
	_print message,32
	_exit
	