/*
Zach Koontz
11/18/2021
CSC-2410-01

evenSum.s

To complie:
as -o evenSum.o evenSum.s
gcc -o evenSum evenSum.o

To run:
./evenSum; echo $?

Description:
ARM assembly program to calculate the sum of even numbers in the range of [0, 22].
*/

.global main

main:
  mov r0, #0
  mov r1, #0
  mov r2, #22
  mov r3, #0
  mov r4, #1
  mov r5, #2
  mov r6, #0
  b Loop

Loop:
  while_condition:
  cmp r3, r2
  bgt endLoop

  udiv r7, r3, r5
  mul r8, r7, r5
  sub r9, r3, r8

  cmp r9, r6
  beq sum


  add r3, r3, r4
  b while_condition

endLoop:
  bx lr

sum:
  add r0, r0, r3
  add r3, r3, r4
  b Loop

