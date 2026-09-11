.section .bss
.globl ram
.lcomm ram, 256 #Reserve 256 bytes of RAM (uninitialized memory)

.section .text
.global fill_ram            # Make function visible to C program
fill_ram:

    xorb %al,%al
    mov $1, %bl

    loop_label:             #loop adding bl to al until bl = 11 (N+1) 
        addb %bl, %al
        incb %bl
        cmpb $11, %bl
        jne loop_label      #check if bl == 11 if not jump back up to loop_label
    
    movb %al, ram+0x50      #move al into ram 50

    ret                     #Return to c program



.section .note.GNU-stack,"",@progbits