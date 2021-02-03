/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   bonus_functions.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gcefalo <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/03 14:42:09 by gcefalo           #+#    #+#             */
/*   Updated: 2021/02/03 14:42:12 by gcefalo          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../ft_printf.h"

void	set_hash(const char **in, t_flags *flags)
{
	flags->hash = 2;
	(*in)++;
}

void	set_space(const char **in, t_flags *flags)
{
	if (!flags->plus)
		flags->space = 1;
	(*in)++;
}

void	set_plus(const char **in, t_flags *flags)
{
	flags->plus = 1;
	flags->space = 0;
	(*in)++;
}

void	save_len(int *ptr, int *n_char, t_flags flags)
{
	if (flags.width || flags.minus || flags.zero || flags.width || flags.hash
		|| (flags.precision > -1 && !flags.only_dot) || flags.space ||
		flags.plus)
	{
		*n_char = -1;
		return ;
	}
	*ptr = *n_char;
}
