# Makefile

CC = gcc
DEPS = lodepng.h
OBJ = lodepng.c OP6Logo.c

op6.out: $(OBJ)
	$(CC) -o $@ $^ 

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $<

.PHONY: clean

clean:
	rm -f op6.out

