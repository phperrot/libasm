# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_list_size_bonus.s                               :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: phperrot <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/03 15:37:02 by phperrot          #+#    #+#              #
#    Updated: 2020/03/03 16:00:48 by phperrot         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_list_size

; int ft_list_size(t_list *begin_list);
_ft_list_size:
	xor		rax, rax				; init rax (return value)
loop:								; start loop
	cmp		rdi, 0
	je		end
	jne		redo					; goto redo if not equal
redo:
	inc		rax					; increment rax
	mov		rdi, [rdi + 8]
	jmp		loop					; go back to loop
end:
	ret
