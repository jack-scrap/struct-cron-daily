CC=gcc

EXEC=a.out

BUILDDIR=build

.PHONY: all
all: mk_build $(EXEC)

$(BUILDDIR)/main.o: main.c
	$(CC) -c $< -o $@

$(EXEC): $(BUILDDIR)/main.o
	$(CC) $^ -o $@

.PHONY: mk_build
mk_build:
	mkdir -p $(BUILDDIR)

.PHONY: clean
clean:
	rm $(BUILDDIR)/*.o $(EXEC)
