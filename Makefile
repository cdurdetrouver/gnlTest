# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gbazart <gbazart@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/27 17:19:55 by gbazart           #+#    #+#              #
#    Updated: 2023/11/28 14:13:33 by gbazart          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = output
FLAG = -Wall -Wextra -Werror
BUFFER_SIZE=42
OPTION = -I ../ -D BUFFER_SIZE=$(BUFFER_SIZE)
SRC = ../get_next_line.c ../get_next_line_utils.c
SRCB = ../get_next_line_bonus.c ../get_next_line_utils_bonus.c
TXT = *.txt


all: $(NAME)

$(NAME):
	cc $(FLAG) $(OPTION) $(SRC) main.c
	./a.out test1.txt
	./a.out test2.txt
	valgrind ./a.out test3.txt

bonus:
	cc $(FLAG) $(OPTION) $(SRCB) main_bonus.c
	./a.out test1.txt test2.txt test3.txt
	valgrind ./a.out test1.txt test2.txt test3.txt

salaud:
	cc $(FLAG) $(OPTION) $(SRCB) main_bonus.c
	sh test.sh
	valgrind ./a.out $(TXT)
	sh test2.sh

clean:
	/bin/rm -f $(OBJ)
fclean: clean
	/bin/rm -f $(NAME)

re: fclean all