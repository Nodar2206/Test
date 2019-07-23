section .data
        text1 db "What is your name? "
        text2 db "Hello, " ;ЯКЩО БУДЕ КІЛЬКІСТЬ БУКВ БІЛЬША ЗА САМЕ СЛОВО, ТО ЧАСТИНА ЙОГО БУДЕ ВИВОДИТИСЯ 
        
section .bss ;reserve data
        name resb 16 ;reserve 16 bitess, 'RESB' - resorve bites

section .text
        global _start

_start: 

    call _printText1
    call _getName
    call _printText2
    call _printName

    mov rax, 60
    mov rdi, 0
    syscall

_getName:
    mov rax, 0; 0 = user input, 1 = user output
    mov rdi, 0; 0 = input
    mov rsi, name; label
    mov rdx, 16; 16 bytes as we reserved
    syscall
    ret


_printText1:
    mov rax, 1
    mov rdi, 1
    mov rsi, text1
    mov rdx, 19
    syscall
    ret

_printText2:
    mov rax, 1
    mov rdi, 1
    mov rsi, text2
    mov rdx, 7
    syscall
    ret

_printName:
    mov rax, 1
    mov rdi, 1
    mov rsi, name
    mov rdx, 16 ;What we reserved
    syscall
    ret
    

