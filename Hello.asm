# ARM Assembly Hello World

.global _start
.section .text

_start:
    # Print Hello, World! to stdout
    mov r7, #0x4
    mov r0, #1
    ldr r1, =greeting
    mov r2, #14
    swi 0

    # Exit with code 0
    mov r7, #0x1
    mov r0, #0
    swi 0

.section .data
    greeting:
    .ascii "Hello, World!\n"
