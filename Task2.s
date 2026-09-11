.section .bss
.globl ram
.lcomm ram, 256 #Reserve 256 bytes of RAM (uninitialized memory)

.section .text
.global fill_ram            # Make function visible to C program
fill_ram:
    lea ram+0x50, %eax
    movb $0xFF,(%eax)
    inc %eax
    movb $0xFF,(%eax)
    inc %eax
    movb $0xFF,(%eax)
    inc %eax
    movb $0xFF,(%eax)
    inc %eax
    movb $0xFF,(%eax)
    inc %eax
    movb $0xFF,(%eax)
    inc %eax
    movb $0xFF,(%eax)
    inc %eax
    movb $0xFF,(%eax)
    inc %eax
    movb $0xFF,(%eax)

    ret         #return to C program

.section .note.GNU-stack,"",@progbits