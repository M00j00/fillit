# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amanchon <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/27 16:29:55 by amanchon          #+#    #+#              #
#    Updated: 2016/10/18 17:34:40 by amanchon         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	fillit
FLAGS	=	-Wall -Wextra -Werror
CC		=	gcc
SRC		=	free.c main.c map.c resolver.c tetri.c check.c
OBJ		=	$(SRC:.c=.o)

all: $(NAME)

$(NAME):
	cd libft/ && $(MAKE)
	$(CC) $(FLAGS) $(SRC) -L ./libft -lft -o $(NAME)

%.o: %.c
	$(CC) $(FLAGS) -c $^ -o $@

clean:
	cd libft/ && $(MAKE) clean
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)
	cd libft/ && $(MAKE) fclean

re: fclean all

.PHONY: re fclean clean all
