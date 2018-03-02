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
#include "lfsr.h"

#define GAIN1     10.0
#define GAIN2     -12.0
#define OFFSET1   0.8
#define OFFSET2   0.8
#define TIME1     24
#define TIME2     15

class Cloud
{
	public:
		Cloud();
		void begin(uint8_t seed, float gain, float offset, uint16_t filt, uint16_t time);
		float update(void);
	private:
		uint8_t targetV;
		uint8_t seed;
		float myGain;
		float myOffset;
		uint16_t filter_factor;
		uint16_t time_factor;
		float v;
		uint32_t timer;
};

Cloud::Cloud()
{
	targetV = 0;
	v = 0.0;  // start mid-scale
	timer = 0;
}

void Cloud::begin(uint8_t seed, float gain, float offset, uint16_t filt, uint16_t time)
{
	targetV = seed;
	myGain = gain;
	myOffset = offset;
	filter_factor = filt;
	time_factor = time;
}

float Cloud::update()
{
		if(timer)
		{
			timer -= 1;
		}
		else
		{
			timer = time_factor;
			targetV = lfsr_inc_8(lfsr_taps8, &targetV);
		}
		
		// Filter
		v = v + (((float)targetV-128.0) - v) / filter_factor;
		
		float vtmp = (v*myGain)+((myOffset+1)*128);
		if(vtmp > 255)
			vtmp = 255;
		else if(vtmp < 0)
			vtmp = 0;
		
		return vtmp;
}

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

