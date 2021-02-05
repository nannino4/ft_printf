/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gcefalo <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/03 14:42:27 by gcefalo           #+#    #+#             */
/*   Updated: 2021/02/03 16:21:03 by gcefalo          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	divide(int nb)
{
	char n;

	if (nb > 9)
		divide(nb / 10);
	n = nb % 10 + '0';
	write(1, &n, 1);
}

void	ft_put_abs_nbr(int nb)
{
	if (nb == -2147483648)
		write(1, "2147483648", 10);
	else
	{
		if (nb < 0)
			nb = -nb;
		divide(nb);
	}
}

void	ft_put_unsigned(unsigned int nb)
{
	char n;

	if (nb > 9)
		ft_put_unsigned(nb / 10);
	n = nb % 10 + '0';
	write(1, &n, 1);
}
