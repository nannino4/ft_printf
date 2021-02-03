# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gcefalo <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/25 12:53:31 by gcefalo           #+#    #+#              #
#    Updated: 2021/02/03 11:46:30 by gcefalo          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =		libftprintf.a

SRCS =		$(wildcard *.c) $(wildcard libft/*.c) $(wildcard utils/*.c)
OBJS =		$(SRCS:.c=.o)

BSRCS =		$(wildcard bonus/*.c)
BOBJS =		$(BSRCS:.c=.o)

CFLAGS =	-Wall -Wextra -Werror

%.o:		%.c
			gcc -c $(CFLAGS) $< -o $@

$(NAME):	$(OBJS) $(BOBJS)
			ar rcs $(NAME) $(OBJS) $(BOBJS)

all:		$(NAME)

bonus:		$(NAME)

clean:
			rm -f $(OBJS) $(BOBJS) *.o

fclean:		clean
			rm -f $(NAME)

re:			fclean all

.PHONY:		all clean fclean re
