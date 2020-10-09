all: clean
	@nasm -fmacho64 hello.asm
	@ld -e _start -o hello hello.o -lSystem
	@./hello
clean:
	@rm -f hello.o hello
