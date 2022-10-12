CC=gcc

.PHONY: all
all: make

main.o: main.c
	$(CC) -c $< -o $@

.PHONY: make
make: main.o
	$(CC) $^

.PHONY: clean
clean:
	rm *.o a.out
