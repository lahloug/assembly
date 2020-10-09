          global    _start

          section   .data
text1:    db        'What is your name ?', 10      ; note the newline at the end
text2:    db        'Hello, '

          section   .bss
name:     resb        16

          section   .text
_start:   mov       rax, 0x02000004         ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, text1              ; address of string to output
          mov       rdx, 20                 ; number of bytes
          syscall
          mov       rax, 0x02000003         ; system call for read
          mov       rdi, 0                  ; file handle 0 is stdin
          mov       rsi, name               ; address of string to store
          mov       rdx, 16                 ; number of bytes
          syscall
          mov       rax, 0x02000004         ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, text2              ; address of string to output
          mov       rdx, 7                  ; number of bytes
          syscall
          mov       rax, 0x02000004         ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, name               ; address of string to output
          mov       rdx, 16                 ; number of bytes
          syscall
          mov       rax, 0x02000001         ; system call for exit
          xor       rdi, rdi                ; exit code 0
          syscall                           ; invoke operating system to exit
