# Hello World in ARM Assembly

This is a toy repository demonstrating how to write HelloWorld using ARM
assembly.

## Prerequisites
Install Qemu (emulator) and gcc tools for arm (assembler, linker):
```
sudo apt install qemu qemu-system-arm qemu-user
sudo apt install gcc-arm-linux-gnueabi
```

## Assembling and Executing the Code
First assemble the source code into object code
```
arm-linux-gnueabi-as Hello.asm -o Hello.o
```

Then convert the object code to an elf
```
arm-linux-gnueabi-gcc Hello.o -o Hello.elf -nostdlib
```

Run the program using Qemu
```
qemu-arm ./Hello.elf
```
