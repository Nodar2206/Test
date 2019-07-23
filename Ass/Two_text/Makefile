all: start compile
start:
	@echo "Starting..."
compile:
	nasm -f elf64 file.s -o start.o
	ld -m elf_x86_64 start.o -o start
	@echo "COMPETED"

clean:
	rm start.o
	rm start
	
