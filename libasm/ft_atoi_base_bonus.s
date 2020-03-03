section .text						; code section
global _ft_atoi

_ft_atoi:
	cmp rdi, 0		;check if parameter is NULL
	je  FT_ATOI_END
	mov	rcx, -1
GOING_TO_FIRST_INT:
	inc rcx
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
FT_ATOI_END:
	ret
