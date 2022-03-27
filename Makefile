# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ede-alme <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/11 17:39:13 by ede-alme          #+#    #+#              #
#    Updated: 2022/03/18 12:11:30 by ede-alme         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# 						----  My Makefile file  ----						   #
#   -Version 0.1	-Stil complete some functions and rule to test main.c	   #

NAME = libftprintf.a
CC = clang
FLAGS = -Wall -Wextra -Werror

SOURCE = ft_printf.c ft_printf_utils.c

OBJ = $(SOURCE:.c=.o)

%.o: %.c
	$(CC) $(FLAGS) -c $< -o $@

all: $(NAME)

$(NAME): $(OBJ)
	ar -rc $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re