/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pganglof <pganglof@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/22 12:16:26 by pganglof          #+#    #+#             */
/*   Updated: 2020/01/22 12:16:43 by pganglof         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

# include <stdlib.h>
# include <unistd.h>

int		ft_strlen(char *str);
char	*ft_strcpy(char *dest, const char *src);
int		ft_strcmp(const char *dest, const char *src);
ssize_t	ft_write(int fd, const void *buf, size_t bytes);
ssize_t ft_read(int fd, void *buf, size_t count);
char	*ft_strdup(const char *s);

#endif
