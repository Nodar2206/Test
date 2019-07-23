all: compile
compile:
	nasm -f elf64 file.s -o start.o
	ld -m elf_x86_64 start.o -o start

clean:
	rm start.o
	rm start
	
