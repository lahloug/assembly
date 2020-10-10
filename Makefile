all: clean
	@nasm -fmacho64 main.asm
	@ld -e _start -o main main.o -lSystem
	@./main
clean:
	@rm -f main.o main
