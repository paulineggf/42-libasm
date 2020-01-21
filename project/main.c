#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

int		ft_strlen(char *str);
char	*ft_strcpy(char *dest, const char *src);
int		ft_strcmp(const char *dest, const char *src);
ssize_t	ft_write(int fd, const void *buf, size_t bytes);
ssize_t ft_read(int fd, void *buf, size_t count);
char *ft_strdup(const char *s);
int	main(int argc, char **argv)
{
	char dest[15];
	char *dest2;
	char buf[33];
	int ret;
	int	fd = open("coucou", O_RDONLY);
	// ft_strlen
	printf("%d\n", ft_strlen("0123456789"));

	// ft_strcpy
	ft_strcpy(dest, "Test de strcpy");
	printf("%s\n", dest);

	// ft_strcmp
	printf("ft_strcmp: %i\n", ft_strcmp("a", "a"));
	printf("ft_strcmp: %i\n", ft_strcmp("a", "b"));
  	printf("ft_strcmp: %i\n", ft_strcmp("ABCD", ""));
	printf("ft_strcmp: %i\n", ft_strcmp("ABCD", "abcdEghe"));
   	printf("ft_strcmp: %i\n", ft_strcmp("Hello", "Hello"));
	printf("ft_strcmp: %i\n", ft_strcmp("Ca vb", "Ca va"));

	// ft_write
	printf ("write : %zu\n", ft_write(1, "hello", 5));

	// ft_read
	while ((ret = ft_read(fd, buf, 32)) > 0)
		printf("%s\n", buf);

	dest2 = ft_strdup("Bonjour");
	printf("%s\n", dest2);
	return (0);
}
