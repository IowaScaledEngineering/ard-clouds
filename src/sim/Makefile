#*************************************************************************
#Title:    Makefile
#Authors:  Michael Petersen <railfan@drgw.net>
#          Nathan Holmes <maverick@drgw.net>
#File:     Makefile
#License:  GNU General Public License v3
#
#LICENSE:
#    Copyright (C) 2018 Nathan Holmes and Michael Petersen
#
#    Derived from example WinAVR project Makefile
#
#    This program is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 3 of the License, or
#    any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#    
#    You should have received a copy of the GNU General Public License along 
#    with this program. If not, see http://www.gnu.org/licenses/
#    
#*************************************************************************


TARGET = main
LIBS = 
CC = g++

INCLUDES = -I. -I../ard-clouds
CFLAGS = $(INCLUDES) -Wall

.PHONY: default all clean

default: $(TARGET)
all: default

SRCS = main.cpp lfsr.cpp
INCS = lfsr.h ../ard-clouds/ard-clouds.h

OBJS = ${SRCS:.cpp=.o}

%.o: %.cpp $(INCS)
	$(CC) $(CFLAGS) -c $< -o $@

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -Wall $(LIBS) -o $@

clean:
	-rm -f *.o
	-rm -f $(TARGET)
