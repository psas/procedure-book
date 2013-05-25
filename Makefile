BOOKS = launch-tower

PFLAGS = --toc -s

all: build

build:
	cd $(BOOKS);\
	pandoc $(PFLAGS) $(BOOKS).md -o procedure-book.pdf
