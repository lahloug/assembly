
all:
	@rm -f hello.o hello
	@nasm -fmacho64 hello.asm
	# ld -e _start -o hello hello.o -lSystem
	@ld -o hello hello.o -lSystem
	@/bin/zsh hello
