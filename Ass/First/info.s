section .data
        text db "Hello, Fucking World",10 
;text - назва адреси пам'яті яку ми використовуємо, тобто ми будемо використовувати цю назву і код буде вертатися до його заповнення
;db - "Визначити байти, ми беремо певну кількість байтів щоб вставити в код"
;"Hello, Fucking World",10 - це дані які ми беремо, кожен символ = 1 байту
;"10" це то саме що й "\n" - new line


section .text
        global _start ;Запис LABEL
_start: ; LABEL посилання де все буде записуватися в пам'яті
    ;SYS_WRITE - Записати дані в код
    mov rax, 1 ;Default
    mov rdi, 1 ; 1 - Standart output
    mov rsi, text ;Те що було спочатку, те що ми будемо компілювати
    mov rdx, 25 ; - Lenght of the string
    syscall
    ;SYS_EXIT - вихід з коду
    mov rax, 60 ;Для виходу
    mov rdi, 0 ;Вийти без помилок
    syscall
;System call or syscall - дати можливість працювати з ядром
;rax - ID
;rdi - 1
;rsi - 2
;rdx - 3
;Є три секції для Assembler: 1)data 2)bss 3)text
;1. Data - записуються дані які ми використаємо під час компіляції
;2. Bss - дані, які будемо використовувати в майбутньому
;3. Text - середовище самого коду

;ДЛЯ КОМПІЛЯЦІЇ -------------------
;nasm -f elf64 -o file.o file.s
;ld -m elf_x86_64 file.o -o start