section .text
	global _ft_memcpy

_ft_memcpy:
	test	rdx, rdx 		;check if 3rd argument == 0
	jz	end 				;if 3rd argument  = 0, go to end. 
							;rdx variable is also used as counter
	dec	rdx #decremente rdx	;decrementing counter
	mov	cl, BYTE[rsi + rdx] ;initializing cl to n-th byte of the 2nd string
	mov	BYTE ptr[rdi + rdx], cl ;moving cl value to n-th byte of the 1st string
	jmp	_ft_memcpy #on boucle	;loop
end:
	mov	rax, rdi 			;giving rdi pointer as a result
	ret
