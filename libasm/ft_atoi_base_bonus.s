
section .text						; code section
global _ft_atoi

_ft_multiply:
INIT:
	mov rax, 0
	mov rdx, 0
LOOP:
	cmp rdx, rdi
	je END
	add rax, rsi
	inc rdx
	jmp LOOP
END:
	ret

_ft_atoi:
	cmp rdi, 0		;check if parameter is NULL
	je  FT_ATOI_END
	mov	r10, -1		;incrementeur qui  va parcourir la chaine
	mov rax, 0 		;resultat final
	mov al, 0 		
	dec al
	mov rdx, 0
GOING_TO_FIRST_INT:
	inc r10
;	mov ax, 0
;	cmp	BYTE[rdi + r10], 32	
;	je GOING_TO_FIRST_INT
	cmp	BYTE[rdi + r10], 9	
	je GOING_TO_FIRST_INT
	cmp	BYTE[rdi + r10], 10	
	je GOING_TO_FIRST_INT
	cmp	BYTE[rdi + r10], 11	
	je GOING_TO_FIRST_INT
	cmp	BYTE[rdi + r10], 12
	je GOING_TO_FIRST_INT
	cmp	BYTE[rdi + r10], 13	
	je GOING_TO_FIRST_INT
	cmp	BYTE[rdi + r10], 32	
	je GOING_TO_FIRST_INT
	cmp	BYTE[rdi + r10], 0	
	je FT_ATOI_END
CHECK_SIGN:
	cmp BYTE[rdi + r10], 45
	mov rax, 1
	mov al, 0
	je IS_NEGATIVE
	cmp BYTE[rdi + r10], 45
	jne IS_POSITIVE
IS_NEGATIVE:
	mov rax, 1
	inc r10
	cmp BYTE[rdi + r10 - 1], 45
	je MAIN	
IS_POSITIVE:
	mov rax, 1
	cmp BYTE[rdi + r10], 43
	je POSITIVE_FLAG
	cmp BYTE[rdi + r10], 43
	jne MAIN
POSITIVE_FLAG:
	inc r10
MAIN:
	inc rdx
	cmp BYTE[rdi + r10], 48
	je FOUND_DIGIT
	cmp BYTE[rdi + r10], 49
	je FOUND_DIGIT
	cmp BYTE[rdi + r10], 50
	je FOUND_DIGIT
	cmp BYTE[rdi + r10], 51
	je FOUND_DIGIT
	cmp BYTE[rdi + r10], 52
	je FOUND_DIGIT
	cmp BYTE[rdi + r10], 53
	je FOUND_DIGIT
	cmp BYTE[rdi + r10], 54
	je FOUND_DIGIT
	cmp BYTE[rdi + r10], 55
	je FOUND_DIGIT
	cmp BYTE[rdi + r10], 56
	je FOUND_DIGIT
	cmp BYTE[rdi + r10], 57
	je FOUND_DIGIT
	cmp BYTE[rdi + r10], 0
	je FT_ATOI_END
	
INIT_rcx:		;those lines because i can't initialize al to 0 (no idea why)
	mov rcx, 0
	mov rax, 0
	mov rdx, 4
FOUND_DIGIT:
	cmp rdx, 1
	je INIT_rcx
	mov r9, rdi
	mov rdi, 10
	mov rsi, rax
	call _ft_multiply
	mov rdi, r9
;	mov rcx,qword[rdi + r10]
;	sub rcx, '0'
;	add rax, rcx
	add rax, qword[rdi + r10]
	sub rax, '0'
	inc r10
	jmp MAIN

FT_ATOI_END:
	ret
