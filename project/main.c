#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include "libasm.h"
#include <libc.h>

int		main(int argc, char **argv)
{
	char dest[15];
	char *dest2;
	char buf[33];
	int ret;
	int	fd = open("fichier.txt", O_RDONLY);

	// ft_strlen
	printf("Chaine testee par ft_strlen : \"0123456789\" = %d\n\n", ft_strlen("0123456789"));

	// ft_strcpy
	ft_strcpy(dest, "Test de strcpy");
	printf("%s\n\n", dest);

	// ft_strcmp
	printf("ft_strcmp: %i\n", ft_strcmp("a", "a"));
	printf("ft_strcmp: %i\n", strcmp("a", "a"));
	printf("ft_strcmp: %i\n", ft_strcmp("a", "b"));
	printf("ft_strcmp: %i\n", strcmp("a", "b"));
  	printf("ft_strcmp: %i\n", ft_strcmp("ABCD", ""));
  	printf("ft_strcmp: %i\n", strcmp("ABCD", ""));
	printf("ft_strcmp: %i\n", ft_strcmp("ABCD", "abcdEghe"));
	printf("ft_strcmp: %i\n", strcmp("ABCD", "abcdEghe"));
   	printf("ft_strcmp: %i\n", ft_strcmp("Hello", "Hello"));
   	printf("ft_strcmp: %i\n", strcmp("Hello", "Hello"));
	printf("ft_strcmp: %i\n\n", ft_strcmp("Ca vb", "Ca va"));
	printf("ft_strcmp: %i\n\n", strcmp("Ca vb", "Ca va"));

	// ft_write
	printf(" Fonction ft_write : %zu\n\n", ft_write(1, "hello", 5));

	// ft_read
	printf("Fonction ft_read:\n");
	while ((ret = ft_read(fd, buf, 32)) > 0)
		printf("%s\n\n", buf);

	// ft_strdup
	printf("Fonction ft_strdup:\n");
	dest2 = ft_strdup("Bonjour");
	printf("%s\n\n", dest2);
	return (0);
}
