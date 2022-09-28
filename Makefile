SRC			=	is/ft_isalnum.c	is/ft_isalpha.c	is/ft_isascii.c	is/ft_isdigit.c	is/ft_isprint.c \
				lst/ft_lstadd_back.c	lst/ft_lstadd_front.c	lst/ft_lstclear.c	lst/ft_lstdelone.c	lst/ft_lstiter.c	lst/ft_lstlast.c	lst/ft_lstmap.c	lst/ft_lstnew.c	lst/ft_lstsize.c \
				mem/ft_bzero.c	mem/ft_calloc.c	mem/ft_memchr.c	mem/ft_memcmp.c	mem/ft_memcpy.c	mem/ft_memmove.c	mem/ft_memset.c \
				print/ft_putchar_fd.c	print/ft_putendl_fd.c	print/ft_putnbr_fd.c	print/ft_putstr_fd.c \
				str/ft_atoi.c	str/ft_itoa.c	str/ft_split.c	str/ft_strchr.c	str/ft_strcpy.c	str/ft_strdup.c	str/ft_striteri.c	str/ft_strjoin.c	str/ft_strlcat.c	str/ft_strlcpy.c	str/ft_strlen.c	str/ft_strmapi.c	str/ft_strncmp.c	str/ft_strncpy.c	str/ft_strnstr.c	str/ft_strrchr.c	str/ft_strstr.c	str/ft_strtrim.c	str/ft_substr.c	str/ft_tolower.c	str/ft_toupper.c

HEADERS		=	hdrs/libft.h

OBJ			= 	${SRC:.c=.o}
OBJSDIR		=	objs/

NAME		= libft.a
CC			= gcc
CFLAGS		= -Wall -Wextra -Werror
RM			= rm -rf

NONE		='\033[0m'
BLU			='\033[0;34m'
RED			='\033[0;31m'
GREEN		='\033[32m'
GRAY		='\033[2;37m'
CURSIVE		='\033[3m'

OBJS		= $(addprefix $(OBJSDIR), $(OBJ))

all:		${NAME}

$(OBJSDIR)%.o : %.c		Makefile
	@mkdir -p $(OBJSDIR)
	@mkdir -p $(OBJSDIR)is
	@mkdir -p $(OBJSDIR)lst
	@mkdir -p $(OBJSDIR)mem
	@mkdir -p $(OBJSDIR)print
	@mkdir -p $(OBJSDIR)str
	@gcc $(CFLAGS) -c $< -o $@
	@echo $(CURSIVE)$(GRAY) "     - creating .o ..." $(NONE)

${NAME}: ${OBJS}
	@echo $(CURSIVE)$(GRAY) "     - Compiling $(NAME)..." $(NONE)
	@ar rc ${NAME} ${OBJS}

clean:
			${RM} ${OBJS}
			${RM} ${OBJSDIR}

fclean:		clean
			${RM} ${NAME}

re:			fclean all

.PHONY:		all clean fclean re bonus
