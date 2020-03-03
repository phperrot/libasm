section .text
	global _ft_list_sort

; void ft_list_sort(t_list **begin_list, int (*cmp)(void*, void*));
_ft_list_sort:
	mov		r13, [rdi]	; r13 = *begin_list, enables us to remember the adress of the beginning of the list
	mov		rdi, [rdi]	; lst = *begin_list

loop:
	mov		r10, [rdi+8]; r10 = lst->next
	cmp		r10, 0		; if lst->next == NULL, this means we reached end of list
	je		end			; then return
	push	rdi			;
	push	rsi			;
	mov		rcx, rsi	; store *cmp
	mov		rsi, [rdi+8]; 2nd = lst->next
	mov		rsi, [rsi]	; 2nd = lst->next->data
	mov		rdi, [rdi]	; 1st = lst->data
	call	rcx			; *cmp(lst->data, lst->next->data)
	pop		rsi			;
	pop		rdi			;
	cmp		rax, 0		; if rax > 0
	jg		unsorted	; then unsorted
	jmp		sorted		; else sorted

unsorted:
	mov		r11, [r10]	; r11 = lst->next->data
	mov		r12, [rdi]	; r12 = lst->data
	mov		[rdi], r11	; lst->data = lst->next->data
	mov		[r10], r12	; lst->next->data = lst->data
	mov		rdi, r13	; return to beginning of list
	jmp		loop		; loop

sorted:
	mov		rdi, [rdi+8]; lst = lst->next
	jmp		loop		; loop

end:
	ret
