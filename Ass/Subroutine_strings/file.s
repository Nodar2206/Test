;Here I can print string without counting rsi(LENGHT)
section .data
        text1 db "DAROVA",10,0 ;Counting unitll it hits zero

section .text
        global _start
_start:
        mov rax, text1
        call _print

        mov rax, 60
        mov rdi, 0
        syscall

;input: rax as pointer to string (MEMORY ADRESS)
;output: print string at rax
_print:;Here we need to count link
        push rax;Write in stack
        mov rbx, 0 ;count link of the string
_printLoop:;Process
        inc rax
        inc rbx;How long the string is 
        mov cl, [rax] ;cl - is a 8 bit eqvalent of rcx
        cmp cl, 0 ;cmp – команда процессора для сравнения чисел
        jne _printLoop ;Умовний перехід

        mov rax, 1
        mov rdi, 1
        pop rsi ;exit from stack
        mov rdx, rbx
        syscall
        ret