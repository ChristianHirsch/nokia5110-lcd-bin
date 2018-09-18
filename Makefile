CFLAGS=-std=c99

all: lcd5110

lcd5110: lcd5110.o
	gcc $(LFLAGS) -o $@ $<

lcd5110.o: lcd5110.c
	gcc $(CFLAGS) -c $<

clean:
	rm lcd5110.o lcd5110
