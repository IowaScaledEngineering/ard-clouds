/*************************************************************************
Title:    ARD-CLOUDS Simulator
Authors:  Michael D. Petersen <railfan@drgw.net>
          Nathan D. Holmes <maverick@drgw.net>
File:     main.cpp
License:  GNU General Public License v3

LICENSE:
    Copyright (C) 2018 Michael Petersen & Nathan Holmes
    
    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
*************************************************************************/

#include <stdio.h>
#include "ard-clouds.h"

#define GAIN1     6.0
#define GAIN2     12.0
#define OFFSET1   0.0
#define OFFSET2   0.0
#define TIME1     24
#define TIME2     15

int main(void)
{
	Cloud cloud1;
	Cloud cloud2;
	
	cloud1.begin(1, GAIN1, OFFSET1, 2000, TIME1);
	cloud2.begin(2, GAIN2, OFFSET2, 2000, TIME2);

	uint32_t t;

	for(t=0; t<100000; t++)
	{
		printf("%f,%d,%d\n", (t*0.1)/60, (uint8_t)cloud1.update(), (uint8_t)cloud2.update());
	}	
	
	return 0;
}
