BOOKS = launch-tower.md \
	overnight.md \
	arts.md \
    payload-checkout.md \
    reference.md \
    personal-supplies.md \
    inventory.md \

PFLAGS = --variable=documentclass=format/psas-procedure-book \
         --variable mainfont=Ariel \
		 --include-before-body=format/prefix.tex \
         -N --smart --toc -s

HFLAGS = --include-in-header=format/header.html \
         --include-before-body=format/pre.html \
         --include-after-body=format/footer.html \
         -N --toc -s \
         --self-contained \
         --to=html5


all: build

build:
	pandoc $(PFLAGS) $(BOOKS) -o procedures.pdf
	pdftk format/procedurebook_cover.pdf format/blank.pdf procedures.pdf cat output procedure-book.pdf
	rm -f procedures.pdf

html:
	pandoc $(HFLAGS) $(BOOKS) -o procedure-book.html

clean:
	rm -f procedures.pdf procedure-book.pdf

