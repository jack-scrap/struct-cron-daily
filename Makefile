CC=gcc

EXEC=a.out

.PHONY: all
all: $(EXEC)

main.o: main.c
	$(CC) -c $< -o $@

$(EXEC): main.o
	$(CC) $^ -o $@

.PHONY: clean
clean:
	rm *.o $(EXEC)
