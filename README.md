# PSAS Launch 11 Procedure Book
 
Standard Operating Procedures, reference, and support documentation for L-11

## Editing

The raw book files are [markdown](http://daringfireball.net/projects/markdown/syntax). Please keep each major secion in it's own file for easier managment.  Files can be editied in place using github's web interface, or simply clone the repo and open the files in your favorite text editor.

_If you add a new file be sure to add the filename to the `BOOKS` variable in the Makefile._


## Building

For a simple HTML page containing the whole book run

    $ make html

For a pdf of the book make sure you have pdftk as well as [pandoc](http://johnmacfarlane.net/pandoc/README.html) installed with LaTeX support.

Run:

	$ make latex

For a booklet (printable full duplex on US Letter paper, to be folded in half and staple bound.  This requires a fair amount of pdf and ps tools, check the make error ouput for hints.

Run:

    $ make booklet

