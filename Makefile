.DEFAULT_GOAL := book.pdf
SHELL=/usr/bin/env bash
DEPENDS=pandoc pdflatex bc echo rm# also the pdfpages package in LaTeX
PAMP_FOLD_SPACE=0# inches
#PAMP_INNER=$(shell echo 'scale=3;$(PAMP_FOLD_SPACE) * 2' | bc)# pamphlet inner margin
PAMP_INNER=1# inches, pamphlet inner margin
PAMP_OTHER=0.75# inches, pamphlet top/bottom/outer margins
PAMP_PHYS_WIDTH=11# inches, physical width of a printed sheet
PAMP_PHYS_HEIGHT=8.5# inches, physical height of a printed sheet
PAMP_LOGI_WIDTH=$(shell echo 'scale=3;($(PAMP_PHYS_WIDTH) - $(PAMP_FOLD_SPACE))/2' | bc)# inches, width of a logical page
PAMP_LOGI_HEIGHT=$(PAMP_PHYS_HEIGHT)# inches, height of a logical page
PAMP_FRAME=true# whether to draw a frame around logical pages in the pamphlet (for debugging)
TEX_BODY_PREFIX=format/prefix.tex
PD_FLAGS = --variable mainfont=Ariel \
           --top-level-division=chapter \
           --number-sections \
		   #--include-before-body=$(TEX_BODY_PREFIX) \
		   #--variable=documentclass=format/psas-procedure-book \
		   #--standalone \
           #--to=latex#+yaml_metadata_block
           #--parse-raw \
		   # --smart 
PDFLATEX_FLAGS=#-interaction=batchmode
CHAPTERS_MD=$(shell ls src/*-*.md)
CHAPTERS=$(shell basename --suffix .md --multiple $(CHAPTERS_MD))
CHAPTERS_TEX=$(shell ls *-*.md | sed 's/.md$$/.tex/')
CHAPTERS_PDF=$(shell ls *-*.md | sed 's/.md$$/.pdf/')
BROWSER=firefox# browser to preview the site
PORT=4040# port to preview the site on

%.tex: %.md $(TEX_BODY_PREFIX)
	# using generic TEX recipe
	pandoc $^ -o $@ $(PD_FLAGS)

%.pdf: %.tex
	# using generic PDF recipe
	pdflatex $^ $(PDFLATEX_FLAGS)

procedures.tex: $(CHAPTERS_MD)  $(TEX_BODY_PREFIX)
	pandoc -o $@ $(CHAPTERS_MD) $(PD_FLAGS)

book_procedures.pdf: $(CHAPTERS_MD) $(TEX_BODY_PREFIX) format/psas-procedure-book.cls
	pandoc -o $@ $(CHAPTERS_MD) $(PD_FLAGS) \
		--resource-path=src\
		--table-of-contents --toc-depth=2 \
		--variable=documentclass=format/psas-procedure-book 

book.pdf: book_procedures.pdf format/book.tex format/blank.pdf format/procedurebook_cover.pdf
	# build the binder-style book
	pdflatex format/book.tex $(PDFLATEX_FLAGS)

psas-procedure-pamphlet.cls: format/psas-procedure-pamphlet.cls Makefile
	cat format/psas-procedure-pamphlet.cls > psas-procedure-pamphlet.cls
	echo '\RequirePackage[ ' >> $@
	echo 'paperwidth=$(PAMP_LOGI_WIDTH)in,paperheight=$(PAMP_LOGI_HEIGHT)in, ' >> $@
	echo 'inner=$(PAMP_INNER)in,outer=$(PAMP_OTHER)in,top=$(PAMP_OTHER)in,bottom=$(PAMP_OTHER)in ' >> $@
	echo ']{geometry}' >> $@
		

pamphlet_procedures.pdf: $(CHAPTERS_MD) Makefile psas-procedure-pamphlet.cls
	# rendering the content for the pamphlet
	pandoc -o $@ $(CHAPTERS_MD) \
		--resource-path=src\
		--table-of-contents --toc-depth=1 \
		--variable=documentclass=psas-procedure-pamphlet 
		#-V geometry:paperwidth=$(PAMP_LOGI_WIDTH)in -V geometry:paperheight=$(PAMP_LOGI_HEIGHT)in 

pamphlet_pages.pdf: pamphlet_procedures.pdf format/pamphlet_pages.tex format/blank.pdf format/procedurebook_cover.pdf Makefile
	# concatenating the pages for the pamphlet
	# This injects page geometry settings from the Makefile to keep the geometry consistent.
	pdflatex $(PDFLATEX_FLAGS)\
		'\AtBeginDocument{\usepackage[paperwidth=$(PAMP_LOGI_WIDTH)in, paperheight=$(PAMP_LOGI_HEIGHT)in]{geometry}} \input{format/pamphlet_pages.tex}' 

pamphlet.tex: Makefile
	# Yes, this is hacky, and I'm okay with that.
	-rm $@
	echo '\documentclass{article}' >> $@
	echo '\usepackage[paperwidth=$(PAMP_PHYS_WIDTH)in, paperheight=$(PAMP_PHYS_HEIGHT)in]{geometry}' >> $@
	echo '\usepackage{pdfpages}' >> $@
	echo '\begin{document}' >> $@
	echo '\includepdf[pages=-, offset=0 0, signature=32, frame=$(PAMP_FRAME), delta=$(PAMP_FOLD_SPACE)in 0in]{pamphlet_pages.pdf}' >> $@
	echo '\end{document}' >> $@

pamphlet.pdf: pamphlet_pages.pdf pamphlet.tex
	pdflatex pamphlet.tex $(PDFLATEX_FLAGS)

.PHONY: clean checkDepends test echoVars

clean:
	-rm *.tex *.pdf *.aux *.log psas-procedure-pamphlet.cls

checkDepends:
	type $(DEPENDS)

siteDev:
	firefox http://localhost:$(PORT)/
	jekyll serve --watch --livereload --livereload-min-delay 2 --port $(PORT) 

test:
	echo 'scale=3;($(PAMP_PHYS_HEIGHT) - $(PAMP_FOLD_SPACE))/2' | bc

echoVars:
	# '.DEFAULT_GOAL is $(.DEFAULT_GOAL)'
	# 'SHELL is $(SHELL)'
	# 'DEPENDS is $(DEPENDS)'
	# 'PAMP_FOLD_SPACE is $(PAMP_FOLD_SPACE)'
	# 'PAMP_PHYS_WIDTH is $(PAMP_PHYS_WIDTH)'
	# 'PAMP_PHYS_HEIGHT is $(PAMP_PHYS_HEIGHT)'
	# 'PAMP_LOGI_WIDTH is $(PAMP_LOGI_WIDTH)'
	# 'PAMP_LOGI_HEIGHT is $(PAMP_LOGI_HEIGHT)'
	# 'PAMP_FRAME is $(PAMP_FRAME)'
	# '#PD_FLAGS is $(#PD_FLAGS)'
	# 'PD_FLAGS  is $(PD_FLAGS )'
	# 'PDFLATEX_FLAGS is $(PDFLATEX_FLAGS)'
	# 'CHAPTERS_MD is $(CHAPTERS_MD)'
	# 'CHAPTERS is $(CHAPTERS)'
	# 'CHAPTERS_TEX is $(CHAPTERS_TEX)'
	# 'CHAPTERS_PDF is $(CHAPTERS_PDF)'
