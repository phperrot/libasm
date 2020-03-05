section .text						; code section
global _ft_atoi

_ft_atoi:
	cmp rdi, 0		;check if parameter is NULL
	je  FT_ATOI_END
	mov	rcx, -1		;incrementeur qui  va parcourir la chaine
	mov rax, 0 		;resultat final
	mov al, 0 		
	dec al
GOING_TO_FIRST_INT:
	inc rcx
	mov ax, 0
;	cmp	BYTE[rdi + rcx], 32	
;	je GOING_TO_FIRST_INT
	cmp	BYTE[rdi + rcx], 9	
	je GOING_TO_FIRST_INT
	cmp	BYTE[rdi + rcx], 10	
	je GOING_TO_FIRST_INT
	cmp	BYTE[rdi + rcx], 11	
	je GOING_TO_FIRST_INT
	cmp	BYTE[rdi + rcx], 12
	je GOING_TO_FIRST_INT
	cmp	BYTE[rdi + rcx], 13	
	je GOING_TO_FIRST_INT
	cmp	BYTE[rdi + rcx], 32	
	je GOING_TO_FIRST_INT
	cmp	BYTE[rdi + rcx], 0	
	je FT_ATOI_END
CHECK_SIGN:
	cmp BYTE[rdi + rcx], 45
	mov rax, 1
	je IS_NEGATIVE
	cmp BYTE[rdi + rcx], 45
	jne IS_POSITIVE
IS_NEGATIVE:
	mov rax, -1
	inc rcx
	cmp BYTE[rdi + rcx - 1], 45
	je MAIN	
IS_POSITIVE:
	mov rax, 1
	cmp BYTE[rdi + rcx], 43
	je POSITIVE_FLAG
	cmp BYTE[rdi + rcx], 43
	jne MAIN
POSITIVE_FLAG:
	inc rcx
MAIN:
	mov rdx, 0		;rdx is the variable used as a 'check' variable
	cmp BYTE[rdi + rcx], 48
	je FOUND_DIGIT
	cmp BYTE[rdi + rcx], 49
	je FOUND_DIGIT
	cmp BYTE[rdi + rcx], 50
	je FOUND_DIGIT
	cmp BYTE[rdi + rcx], 51
	je FOUND_DIGIT
	cmp BYTE[rdi + rcx], 52
	je FOUND_DIGIT
	cmp BYTE[rdi + rcx], 53
	je FOUND_DIGIT
	cmp BYTE[rdi + rcx], 54
	je FOUND_DIGIT
	cmp BYTE[rdi + rcx], 55
	je FOUND_DIGIT
	cmp BYTE[rdi + rcx], 56
	je FOUND_DIGIT
	cmp BYTE[rdi + rcx], 57
	je FOUND_DIGIT
	cmp BYTE[rdi + rcx], 0
	je FT_ATOI_END
	
FOUND_DIGIT:
	inc rdx
	dec al
	mov bl, 12
	mul bl
;	add bl, word byte[rdi + rcx]
;	sub ax, '0'
;	sub ax, 1
	movzx rax, al
;	inc rcx
	je MAIN

FT_ATOI_END:
	ret
