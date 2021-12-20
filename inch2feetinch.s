/*
Zach Koontz
11/4/2021
CSC-2410

To compile:
as -o inch2feetinch.o inch2feetinch.s
gcc -o inch2feetinch inch2feetinch.o
*/


.global main

main:
  mov r1, #20 
  mov r2, #10 
  udiv r3, r1, r2 
  mul r4, r3, r2 
  udiv r11, r1, r2 
  sub r12, r1, r4 
  bx lr

