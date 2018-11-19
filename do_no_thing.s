@ Machine defination
  .cpu  cortex-a53
  .fvpu neon-fpu-armv8
  .syntax unified
@ Define text section
  .text
  .align  2
@ Define main function
  .global main
  .type main, %function
main:
  str fp, [sp, -4]! @ Save the current fp (fp of caller)
  add fp, sp, 0 @ New fp for this function (fp of calle)
  
  mov r3, 0
  mov r0, r3
  
  sub sp, fp, 0 @ Restore sp
  ldr fp, [sp], 4 @ Restore fp
  bx  lr
