BOOKS = launch-tower.md \
	overnight.md \
	arts.md \
    payload-checkout.md \
    on-tower.md \
    launch.md \
    contingency.md \
    reference.md \
    personal-supplies.md \
    inventory.md \

PFLAGS = --variable=documentclass=format/psas-procedure-book \
         --variable mainfont=Ariel \
		 --include-before-body=format/prefix.tex \
         --chapters \
         -N --smart -s --toc \


HFLAGS = --include-in-header=format/header.html \
         --include-before-body=format/pre.html \
         --include-after-body=format/footer.html \
         -N --toc -s \
         --self-contained \
         --to=html5

OUTFILE = procedure-book


all: clean latex booklet html

latex:
	pandoc $(PFLAGS) $(BOOKS) -o procedures.pdf
	pdftk format/procedurebook_cover.pdf format/blank.pdf procedures.pdf format/blank.pdf cat output $(OUTFILE).pdf
	rm -f procedures.pdf

booklet:
	#pdfcrop $(OUTFILE).pdf --noclip --margins 10
	pdftops $(OUTFILE).pdf $(OUTFILE)-crop.ps
	psbook $(OUTFILE)-crop.ps book-$(OUTFILE).ps
	ps2pdf book-$(OUTFILE).ps book-$(OUTFILE).pdf
	pdfnup book-$(OUTFILE).pdf --nup 2x1 --suffix '2x1'
	pdftk book-$(OUTFILE)-2x1.pdf cat 1-endE output $(OUTFILE)_print.pdf
	rm -f $(OUTFILE)-crop.pdf $(OUTFILE)-crop.ps book-$(OUTFILE).ps book-$(OUTFILE).pdf book-$(OUTFILE)-2x1.pdf

html:
	pandoc $(HFLAGS) $(BOOKS) -o procedure-book.html

clean:
	rm -f procedures.pdf procedure-book.pdf procedure-book.html $(OUTFILE)_print.pdf
	rm -f $(OUTFILE)-crop.pdf $(OUTFILE)-crop.ps book-$(OUTFILE).ps book-$(OUTFILE).pdf book-$(OUTFILE)-2x1.pdf

