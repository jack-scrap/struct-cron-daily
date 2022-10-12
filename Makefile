CC=gcc

all: make

main.o: main.c
	$(CC) -c $< -o $@

make: main.o
	$(CC) $^

.PHONY: clean
clean:
	rm *.o a.out
