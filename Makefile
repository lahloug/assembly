all: clean
	@nasm -fmacho64 hello.asm
	@ld -o hello hello.o -lSystem
	@./hello
clean:
	@rm -f hello.o hello
