/*************************************************************************
Title:    ARD-CLOUDS Simulator
Authors:  Michael D. Petersen <railfan@drgw.net>
          Nathan D. Holmes <maverick@drgw.net>
File:     ard-clouds.ino
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

#include "ard-clouds.h"

#define GAIN1     15.0
#define GAIN2     20.0
#define OFFSET1   0.0
#define OFFSET2   0.0
#define TIME1     24
#define TIME2     15

volatile uint8_t ticks;
volatile uint16_t decisecs = 0;

Cloud cloud1;
Cloud cloud2;

uint32_t timeOffset;
	
void setup()
{
	Serial.begin(115200);

	cloud1.begin(1, GAIN1, OFFSET1, 2000, TIME1);
	cloud2.begin(2, GAIN2, OFFSET2, 2000, TIME2);
	
	timeOffset = 256*(max(TIME1,TIME2));
}

void loop()
{
	static uint32_t t;
	uint8_t pwm5, pwm6;

	analogWrite(5, pwm5 = (uint8_t)cloud1.update());
	analogWrite(6, pwm6 = (uint8_t)cloud2.update());

	if(t >= timeOffset)
	{
		uint32_t time = t - timeOffset;
		uint16_t secs = time / 600;
		Serial.print(secs);
		Serial.print('\'');
		uint16_t decisecs = time % 600;
		Serial.print(decisecs/10.0);
		Serial.print(':');
		Serial.print(pwm5);
		Serial.print(',');
		Serial.print(pwm6);
		Serial.print('\n');
		delay(100);
	}
	t++;
}

