# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: phperrot <marvin@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/16 04:18:47 by phperrot          #+#    #+#              #
#    Updated: 2020/01/16 04:18:47 by phperrot         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=   libasm.a

SRCS	=	ft_strlen.s \
			ft_strcmp.s	\
			ft_strcpy.s\
			ft_write.s\
			ft_read.s\

OBJS	=	$(SRCS:.s=.o)
LIBC	= ar -rcs

.s.o:
	nasm -f macho64 $< -o $@ 

$(NAME): ${OBJS}
	${LIBC} $(NAME) $(OBJS)

all: $(NAME)

clean:
	rm -f $(OBJS)
	
fclean: clean
	rm -f $(NAME)

test:
	gcc -Wall -Wextra -Werror main.c  libasm.a 

re: fclean all

.PHONY: all clean fclean test re
