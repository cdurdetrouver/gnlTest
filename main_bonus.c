/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_bonus.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gbazart <gbazart@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/27 17:42:48 by gbazart           #+#    #+#             */
/*   Updated: 2023/11/27 18:22:50 by gbazart          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../get_next_line_bonus.h"
#include <stdio.h>

int	main(int argc, char **argv)
{
	char	*temp;
	int		fd;

	if (argc >= 2)
	{
		while (argc >= 2)
		{
			fd = open(argv[argc - 1], O_RDONLY);
			while ((temp = get_next_line(fd)) != NULL && fd!= -1)
			{
				printf("%s", temp);
				free(temp);
			}
			if (fd != -1)
				close(fd);
			argc--;
		}
	}
}
