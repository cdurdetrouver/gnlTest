/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gbazart <gbazart@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/27 17:25:11 by gbazart           #+#    #+#             */
/*   Updated: 2023/11/28 14:08:07 by gbazart          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../get_next_line.h"
#include <stdio.h>

int	main(int argc, char **argv)
{
	char	*temp;
	int		fd;

	if (argc == 2)
	{
		fd = open(argv[1], O_RDONLY);
		while ((temp = get_next_line(fd)) != NULL && fd != -1)
		{
			printf("%s", temp);
			free(temp);
		}
		close(fd);
	}
}
