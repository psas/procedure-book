BOOKS = launch-tower.md \
	overnight.md \
	arts.md \
    payload-checkout.md \
    inventory.md \

PFLAGS = --variable=documentclass=format/psas-procedure-book \
         --variable mainfont=Ariel \
		 --include-before-body=format/prefix.tex \
         -N --smart --toc -s

all: build

build:
	pandoc $(PFLAGS) $(BOOKS) -o procedures.pdf
	pdftk format/procedurebook_cover.pdf format/blank.pdf procedures.pdf cat output procedure-book.pdf
	rm -f procedures.pdf

clean:
	rm -f procedures.pdf procedure-book.pdf

