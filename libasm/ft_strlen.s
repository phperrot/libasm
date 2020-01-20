section .text						; code section
	global _ft_strlen				; make label available to linker

_ft_strlen:							; standard  gcc  entry point
	mov		rax, 0					; init rax (return value)
loop:								; start loop
	cmp		[rdi], byte 0			; dereference rdi (first parameter) and compare to ASCII caracter NULL  
	jne		redo					; goto redo if not equal
	ret								; return rax
redo:
	inc		rax						; increment rax
	inc		rdi						; increment rdi
	jmp		loop					; go back to loop
