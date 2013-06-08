BOOKS = launch-tower.md

PFLAGS = --toc -s

all: build

build:
	pandoc $(PFLAGS) $(BOOKS) -o procedure-book.pdf
