; Benchmark the getpid system call using syscall

section .data      ; Section containing initialised data

section .bss       ; Section containing uninitialised data

section .text      ; Section containig code

global _start      ; Linker needs this to find the entry point

_start:
	mov r8, 10000000

l1:
	; getpid
	mov rax, 39
	syscall

	; loop
	dec r8
        mov rcx, r8
	jnz l1

	; exit
	mov eax, 60
	xor edi, edi
	syscall
