/*
   Zach Koontz Lab10
   ascii.s
   
   How to compile:

   as -o ascii.o ascii.s
   gcc -o ascii ascii.o
  
   How to Run:

   ./ascii ; echo $?
*/

.global main

main:
    
    mov     r1, #35

    cmp     r1, #30
    blt     invalNum
    
    cmp     r1, #39
    bgt     invalNum

    b   valNum

valNum:
    sub     r2, r1, #30
    mov     r0, r2
    b   end

invalNum:
    mov     r0, #50
    b   end

end:
    bx lr

