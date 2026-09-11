.section .bss
.globl ram
.lcomm ram, 256 #Reserve 256 bytes of RAM (uninitialized memory)

.section .text
.global fill_ram            # Make function visible to C program
fill_ram:
    lea ram+0x50, %rsi
    movb $0xFF,(%rsi)
    inc %rsi
    movb $0xFF,(%rsi)
    inc %rsi
    movb $0xFF,(%rsi)
    inc %rsi
    movb $0xFF,(%rsi)
    inc %rsi
    movb $0xFF,(%rsi)
    inc %rsi
    movb $0xFF,(%rsi)
    inc %rsi
    movb $0xFF,(%rsi)
    inc %rsi
    movb $0xFF,(%rsi)
    inc %rsi
    movb $0xFF,(%rsi)

    ret         #return to C program

.section .note.GNU-stack,"",@progbits