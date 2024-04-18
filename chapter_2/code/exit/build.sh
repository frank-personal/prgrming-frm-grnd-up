nasm -f elf -o exit.o exit.s
ld -m elf_i386 -o exit exit.o
