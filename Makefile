all:
	@rm -f hello.o hello
	@nasm -fmacho64 hello.asm
	@ld -o hello hello.o -lSystem
	@./hello
