.text
.global main

main:
	mov r1, #6			/* a */
	mov r2, #8			/* b */
	mov r3, #3			/* c */
	
	add r0, r1, r2		/* a + b */
	mov r0, r0, ASR #1	/* (a + b)/2 */
	
	mov r4, #1			/* c! */
loop:
	cmp r3, #1
	beq end
	mul r5, r4, r3
	mov r4, r5
	sub r3, r3, #1
	b	loop
	
end:
	add r0, r0, r4		/* (a + b)/2 + c! */
	bx lr
