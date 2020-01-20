section .text
	global _ft_strcmp

_ft_strcmp:
		mov		rax, -1				; initialization of incrementor : -1

loop:	inc		rax					; incrementation of incrementor
		mov		cl, BYTE[rdi + rax]	; cl = str1[i]
		mov		dl, BYTE[rsi + rax]	; dl = str2[i]
		cmp		cl, 0				; if cl == 0, ie if end of str1 is reached
		je		end					; then break loop
		cmp		dl, 0				; if dl == 0, ie if end of str2 is reached
		je		end					; then zero
		cmp		cl, dl				; if cl == dl
    	je		loop				; then loop
		jmp		end

end:
	movsx	rax, cl			; return = str1[i] - str2[i]
	movsx	rdx, dl	
	sub		rax, rdx		;rax is the returned value
	ret
