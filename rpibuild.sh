echo "NOTE: This requires QEMU installed, and an X server as well."
echo "Now Building..."
rm kc.o
rm kasm.o
git pull
#nasm -f elf32 boot/boot.asm -o boot.o
nasm -f elf32 kernel/kernel.asm -o kasm.o
clang -target  i686-unknown-none -Wall -Wextra -fno-stack-protector -m32 -c kernel/kernel.c -o kc.o
gold -m elf_i386 -T link.ld -o kernel.elf kasm.o kc.o #boot.o

echo "Build Complete. Now running in QEMU."
export DISPLAY=:0.0 # Replace 0.0 with the address of your X server if needed.
qemu-system-i386 -curses -kernel kernel.elf
