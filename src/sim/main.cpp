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

#define GAIN1     10
#define GAIN2     -60.0
#define OFFSET1   -0.5
#define OFFSET2   -0.2
#define TIME1     20
#define TIME2     5

//#define GAIN1     15.0
//#define GAIN2     20.0
//#define OFFSET1   0.0
//#define OFFSET2   0.0
//#define TIME1     24
//#define TIME2     15

#define max(a,b)  ((a)>(b)?(a):(b))

int main(void)
{
	Cloud cloud1;
	Cloud cloud2;
	
	cloud1.begin(1, GAIN1, OFFSET1, 2000, TIME1);
	cloud2.begin(2, GAIN2, OFFSET2, 2000, TIME2);

	uint32_t t;

	uint32_t timeOffset = 256*(max(TIME1,TIME2));

	for(t=0; t<timeOffset; t++)
	{
		cloud1.update();
		cloud2.update();
	}	

	for(; t<100000; t++)
	{
		printf("%f,%d,%d\n", ((t-timeOffset)*0.1)/60, (uint8_t)cloud1.update(), (uint8_t)cloud2.update());
	}	
	
	return 0;
}

