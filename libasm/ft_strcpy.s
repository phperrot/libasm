section .text
	global _ft_strcpy
	extern _ft_strlen
_ft_strcpy:							;si on considere ft_strcpy(a,b), on a rdi = a, rsi = b;

	mov rcx, rdi					;this step and the following one are needed to store rdi value in rcx =>	
	mov rdi, rsi					;and apply strlen to rsi (ie b argument)
	call _ft_strlen					;here, ft_strlen takes rdi as an argument (we put rsi value
									;ie b in rdi, so it's ft_strlen(b) result) 
									;the result is stored in rax
	mov rdi, rcx					;rdi gets back its initial value, which was stored in rcx
	mov rdx, rax					;initialization of decrementor rdx at  ft_strlen result (rax)
loop:
	test rdx, rdx					;test si rdx vaut 0
	jz end							;si rdx = 0, go to end
	dec rdx							;decrement rdx
	mov cl, BYTE[rsi + rdx]			;on ne peut pas donner en une seule ligne la valeur de a[i] a b[i]
									;on stocke donc a[i] dans cl 
	mov BYTE[rdi + rdx], cl			;puis on affecte cl a b[i]
	jmp loop						;on boucle
end:
	mov BYTE[rdi + rax], 0			;on finit la chaine par un 0 terminal
	mov rax, rdi					;on affecte a la valeur de retour rax le pointeur vers notre nouvelle chaine
	ret
