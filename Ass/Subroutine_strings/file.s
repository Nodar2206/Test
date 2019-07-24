section .data
        text db "Hello, fucking world!",10,0
%macro exit 0
        mov rax, 60
        mov rdi, 0
        syscall
%endmacro
section .text
        global _start
_start:
        mov rax, text 
        call _Print
        exit
_Print:
        push rax;
        mov rbx, 0
_PrintLoop:
        inc rax
        inc rbx
        mov cl, [rax]
        cmp cl, 0
        jne _PrintLoop

        mov rax, 1
        mov rdi, 1
        pop rsi
        mov rdx, rbx
        syscall
        ret
