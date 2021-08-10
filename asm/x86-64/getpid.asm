; Execute the getpid system call using x86-64 instructions

section .data      ; Section containing initialised data

section .bss       ; Section containing uninitialised data

section .text      ; Section containig code

global _start      ; Linker needs this to find the entry point

_start:
	; getpid
	mov rax, 39
	syscall

	; exit
	mov eax, 60
	xor edi, edi
	syscall
