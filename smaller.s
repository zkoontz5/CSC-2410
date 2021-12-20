/* 
   Zach Koontz Lab10
   smaller.s
   
   How to compile: 

   as -o smaller.o smaller.s
   gcc -o smaller smaller.o
  
   How to Run: 

   ./smaller ; echo $?

   ARM assembly program to find the smaller number of two integer values (stored in r1 and r2).
*/

.global main 

main:

    mov r1, #4
    mov r2, #8
    cmp r2, r1
    blt LessThan

GreaterThan:
    mov r0, r1
    b end

LessThan:
    mov r0, r2

end:
    bx lr
