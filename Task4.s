.section .bss
.globl ram
.lcomm ram, 256 #Reserve 256 bytes of RAM (uninitialized memory)

.section .text
.global fill_ram            # Make function visible to C program
fill_ram:

    xorb %al,%al
    mov $1, %bl

    loop_label:
        addb %bl, %al
        incb %bl
        cmpb $11, %bl
        jne loop_label
    
    movb %al, ram+0x50

    ret



.section .note.GNU-stack,"",@progbits