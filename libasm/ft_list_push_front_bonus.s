extern _malloc

global _ft_list_push_front

; void ft_list_push_front(t_list **begin_list, void *data);
_ft_list_push_front:
	cmp  rdi, 0						;check, if rdi = NULL, this means list = NULL =>go directly to NULL
	je   FT_LIST_PUSH_FRONT_END	

	push rdi						;pushing rdi
	push rsi						;pushing rsi
	xor  rdi, rdi					;init rdi to 0
	mov  edi, 16					;edi get 16
	call _malloc	
	pop  rsi						;retrieving rsi
	pop  rdi						;retrieving rdi
	cmp  rax, 0						;si erreur dans le malloc, sort de la fonction
	je   FT_LIST_PUSH_FRONT_END

	mov  qword [rax + 0], rsi		;on ajoute le deuxeme argument (data) a l'adresse allouee par malloc
	mov  r10, [rdi]					;on prend (t_list*begin_list) et on laffecte a r10
	mov  [rax + 8], r10				;on affecte r10 (donc t_list*begin_list)
	mov  [rdi], rax					;on affecte a rdi (donc au debut de notre list) l element cree
FT_LIST_PUSH_FRONT_END:
	ret
