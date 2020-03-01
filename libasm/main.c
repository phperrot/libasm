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
#include <stdlib.h>

int	main()
{
	char **a;
	char **b;
	char c;
	int i;
	int j;

	c = 'A';
	if (!(a = malloc(sizeof(char*) * 6)))
		return (0);
	if (!(b = malloc(sizeof(char*) * 6)))
	{
		free(a);
		return (0);
	}
	a[0] = strdup("\0");
	a[1] = strdup("coucou");
	a[2] = strdup("hi");
	a[3] = strdup("gyoza");
	a[4] = strdup("\0");
	b[0] = strdup("\0");
	b[1] = strdup("coucou");
	b[2] = strdup("hi");
	b[3] = strdup("gyoza");
	b[4] = strdup("\0");
	
	printf("\033[1;36mSTRCMP\033[0m\n");
	i = 0;
	while (i <5)
	{
		j = 0;
		while (j < 5)
		{
			printf("TEST #\033[0;33m%d\033[0m:", i * 5 + j);
			if (ft_strcmp(a[i], b[j]) == (strcmp(a[i], b[j])))
				printf("\033[0;32mTRUE\033[0m\n");
			else
				printf("\033[0;31mFALSE\033[0m\n");
				
			j++;	
		}
		i++;
	}

	printf("\033[1;36mSTRLEN\033[0m\n");
	i = 0;
	while (i <5)
	{
		printf("TEST #\033[0;33m%d\033[0m:", i);
		if (ft_strlen(a[i]) == (strlen(a[i])))
			printf("\033[0;32mTRUE\033[0m\n");
		else
		printf("\033[0;31mFALSE\033[0m\n");
		i++;
	}

//	printf("%d\n", ft_strlen(a));
//	printf("%d\n", ft_strlen(b));
//	printf("%d\n", ft_strlen(""));
/*	printf("==%s==\n==%s==", a, b);
	printf("\nft_STRCMP:%d", ft_strcmp(a, b));
	printf("\nSTRCMP:%d\n", strcmp(a, b));
	printf("++%s++\n", ft_strcpy(b, a));
	printf("==%s==\n==%s==", a, b);
*/	ft_write(1, &c, 1);
}
