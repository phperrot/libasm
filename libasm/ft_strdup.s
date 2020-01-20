section .txt
	global _ft_strdup
	extern _ft_memcpy

_ft_strdup:
	call	_ft_strlen
	inc	rax				;rax = len, on l'augmente de 1
	mov	r15, rax 		;storing rax (ie len) in r15
	push	rdi 		;saving rdi
	mov	rdi, rax 		;rdi = rax; (because rdi will be used by malloc)
	call	_malloc		;with rdi = rax (ie len)
	pop	rdi 			;fetching rdi (ie len)
	mov	rsi, rdi 		;rsi = rdi
	mov	rdi, rax 		;rdi = rax, rac being the address of memory allocated by malloc
	mov	rdx, r15		;rdx = r15, ie rdx = len, is then used by memcpy
	call	_ft_memcpy 	;calling memcpy, rax (ie final result) takes the value returnd by memcpy
	ret
