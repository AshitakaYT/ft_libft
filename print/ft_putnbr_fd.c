/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aucousin <aucousin@student.42lyon.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/08 14:32:50 by aucousin          #+#    #+#             */
/*   Updated: 2022/09/28 18:28:49 by aucousin         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../hdrs/libft.h"

void	ft_putnbr_fd(int n, int fd)
{
	long int	nbr2;

	nbr2 = n;
	if (nbr2 < 0)
	{
		ft_putchar_fd('-', fd);
		nbr2 *= -1;
	}
	if (nbr2 >= 10)
	{
		ft_putnbr_fd(nbr2 / 10, fd);
		ft_putnbr_fd(nbr2 % 10, fd);
	}
	else
		ft_putchar_fd(nbr2 + '0', fd);
}
