BOOKS = launch-tower.md \
	overnight.md \
	arts.md

PFLAGS = --variable=documentclass=psas-procedure-book \
         --variable mainfont=Ariel \
		 --include-before-body=prefix.tex \
         -N --smart --toc -s

all: build

build:
	pandoc $(PFLAGS) $(BOOKS) -o procedures.pdf
	pdftk cover.pdf procedures.pdf cat output procedure-book.pdf

clean:
	rm -f procedures.pdf procedure-book.pdf

