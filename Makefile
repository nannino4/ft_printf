# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gcefalo <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/25 12:53:31 by gcefalo           #+#    #+#              #
#    Updated: 2021/01/25 12:53:42 by gcefalo          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =		libftprintf.a

SRCS =
OBJS =		$(SRCS:.c=.o)

BSRCS =
BOBJS =		$(BSRCS:.c=.o)

CFLAGS =	-Wall -Wextra -Werror

%.o:		%.c
			gcc -c $(CFLAGS) $<

$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)

all:		$(NAME)

bonus:		$(BOBJS) $(NAME)
			ar rcs $(NAME) $(BOBJS)

clean:
			rm -f $(OBJS) $(BOBJS)

fclean:		clean
			rm -f $(NAME)

re:			fclean all

.PHONY:		all clean fclean re
