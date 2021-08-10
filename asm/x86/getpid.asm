; Execute the getpid system call using x86 instructions

section .data      ; Section containing initialised data

section .bss       ; Section containing uninitialised data

section .text      ; Section containig code

global _start      ; Linker needs this to find the entry point

_start:
	; getpid
	mov eax, 20
	int 0x80

	; exit
	mov eax, 1
	int 0x80
