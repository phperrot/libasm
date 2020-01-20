/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c	                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: phperrot <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/16 04:19:25 by phperrot          #+#    #+#             */
/*   Updated: 2020/01/16 04:19:25 by phperrot         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"
#include <stdio.h>
#include <string.h>

int	main()
{
	char *a;
	char *b;
	char c;

	c = 'A';
	a = strdup("bod");
	b = strdup("bo");
	printf("%d\n", ft_strlen(a));
	printf("%d\n", ft_strlen(b));
	printf("%d\n", ft_strlen(""));
	printf("==%s==\n==%s==", a, b);
	printf("\nft_STRCMP:%d", ft_strcmp(a, b));
	printf("\nSTRCMP:%d\n", strcmp(a, b));
	printf("++%s++\n", ft_strcpy(b, a));
	printf("==%s==\n==%s==", a, b);
	ft_write(1, &c, 1);
}
