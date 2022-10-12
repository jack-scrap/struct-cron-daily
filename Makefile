CC=gcc

.PHONY: all
all: a.out

main.o: main.c
	$(CC) -c $< -o $@

a.out: main.o
	$(CC) $^ -o $@

.PHONY: clean
clean:
	rm *.o a.out
