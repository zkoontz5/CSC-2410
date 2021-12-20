/* 
   Zach Koontz Lab8
   myMod.s
   
   How to compile: 

   as -o file.o file.s
   gcc -o prog file.o
  
   How to Run: 

   ./prog ; echo $?
*/

.global main 

main:

    mov r1, #4
    mov r2, #8
    udiv r3, r1, r2
    mul r4, r3, r2
    sub r0, r1, r4
    bx lr
