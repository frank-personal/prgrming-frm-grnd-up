set -xe

nasm -f elf -o data.o data.s
ld -m elf_i386 -o data data.o
