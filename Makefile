# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mikus <mikus@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/11 11:53:01 by fcasaubo          #+#    #+#              #
#    Updated: 2023/11/01 16:21:53 by mikus            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			=   superlibft.a
GCC				=   gcc
CFLAGS			=   -Wall -Wextra -Werror -c
AR				=   ar
ARFLAGS			=   rcs
RM				=   rm -rf
LFTSRC			:=		\
	ft_isalpha			\
	ft_isdigit			\
	ft_isalnum			\
	ft_isascii			\
	ft_isprint			\
	ft_strlen			\
	ft_memset			\
	ft_bzero			\
	ft_memcpy			\
	ft_memmove			\
	ft_strlcpy			\
	ft_strlcat			\
	ft_toupper			\
	ft_tolower			\
	ft_strchr			\
	ft_strrchr			\
	ft_strncmp			\
	ft_memchr			\
	ft_memcmp			\
	ft_strnstr			\
	ft_atoi				\
	ft_calloc			\
	ft_strdup			\
	ft_substr			\
	ft_strjoin			\
	ft_strtrim			\
	ft_split			\
	ft_itoa				\
	ft_strmapi			\
	ft_striteri			\
	ft_putchar_fd		\
	ft_putstr_fd		\
	ft_putendl_fd		\
	ft_putnbr_fd		\
	ft_lstnew			\
	ft_lstadd_front		\
	ft_lstsize			\
	ft_lstlast			\
	ft_lstadd_back		\
	ft_lstdelone		\
	ft_lstclear			\
	ft_lstiter			\
	ft_lstmap

PFTSRC			:=		\
	ft_printf			\
	ft_putnbr_hex_fd	\
	ft_putnbru_fd 		\
	ft_putaddress_fd	\
	ft_write_character	\
	ft_write_string		\
	ft_write_address	\
	ft_write_number		\
	ft_write_unsigned	\
	ft_write_hex		\
	ft_uitoa			\
	ft_putnbrpf_fd


GNLSRC			:=		\
	get_next_line		\
	get_next_line_utils

SRCS			:=		\
	$(addprefix libft/, $(LFTSRC)) $(addsuffix .c, $(LFTSRC))	\
	$(addprefix printf/, $(PFTSRC)) $(addsuffix .c, $(PFTSRC))	\
	$(addprefix GNL/, $(GNLSRC)) $(addsuffix .c, $(GNLSRC))

OBJ_DIR			=	obj
OBJS			=   $(SRCS:%.c=%.o)

%.o:				%.c
					$(GCC) $(CFLAGS) %.c -o ../$(OBJ_DIR)/%.o

all:				$(NAME)

$(NAME):			$(OBJ_DIR) $(OBJS)
					touch $(NAME)
					$(AR) $(ARFLAGS) $(OBJS) -o $(NAME)
$(OBJ_DIR):
					mkdir -p $(OBJ_DIR)

clean:
					$(RM) $(OBJ_DIR)

fclean:				clean
					$(RM) $(NAME)

re:					fclean all
.PHONY:				all clean fclean re