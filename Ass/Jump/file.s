section .data
        text1 db "ONE",10
        text2 db "TWO",10

section .text
        global _start
_start:

        jmp _label
        jmp _label1

        mov rax, 60
        mov rdi, 0
        syscall
_label:
        mov rax, 1
        mov rdi, 1 
        mov rsi, text1
        mov rdx, 8
        syscall
_label1:

        mov rax, 2
        mov rdi, 1 
        mov rsi, text2
        mov rdx, 10
        syscall
        ret
