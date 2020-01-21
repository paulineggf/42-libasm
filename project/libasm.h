#ifndef LIBASM_H
# define LIBASM_H

# include <stdlib.h>
# include <unistd.h>

int		ft_strlen(const char *str);
char	*ft_strcpy(char *dest, const char *src);
int		ft_strcmp(const char *dest, const char *src);
ssize_t	ft_write(int fd, const void *buf, size_t bytes);

#endif
