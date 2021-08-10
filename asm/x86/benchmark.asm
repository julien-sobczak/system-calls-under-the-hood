; Benchmark the getpid system call using int 0x80

section .data      ; Section containing initialised data

section .bss       ; Section containing uninitialised data

section .text      ; Section containig code

global _start      ; Linker needs this to find the entry point

_start:
	mov ecx, 10000000

l1:
	; getpid
	mov rax, 20
	int 0x80

	; loop
	dec ecx
	jnz l1

	; exit
	mov eax, 1
	int 0x80
