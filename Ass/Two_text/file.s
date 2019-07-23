section .data
        text1 db "DAROVA",10
        text2 db "..TY LOX",10

section .text
        global _start
_start:
        mov rax, 1
        mov rdi, 1 
        mov rsi, text1
        mov rdx, 8
        syscall

        mov rax, 1
        mov rdi, 1 
        mov rsi, text2
        mov rdx, 10
        syscall

        mov rax, 60
        mov rdi, 0
        syscall
