CC=gcc

.PHONY: clean

all: make

main.o: main.c
	$(CC) -c $< -o $@

make: main.o
	$(CC) $^

clean:
	rm *.o a.out
