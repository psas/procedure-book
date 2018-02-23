![cover](format/procedurebook_cover.png)

# PSAS Launch 13 Procedure Book
 
Standard Operating Procedures, reference, and support documentation for

<http://psas.github.io/procedure-book/>


## Editing

The raw book files are [markdown](http://daringfireball.net/projects/markdown/syntax). 
Please keep each major secion in it's own file for easier managment. 
Files can be editied in place using github's web interface, or simply clone the repo and open the files in your favorite text editor.



## Building Book Locally
Everything requires:

- LaTeX
- [pandoc](http://johnmacfarlane.net/pandoc/README.html) installed with LaTeX support.  
	**NOTE**: pandoc > 1.12.1 required to use the yaml_metadata_block format in common with jekyll

### US Letter size sheets for a binder

	$ make pdf

### Booklet
After running `make pdf`:

	$ make booklet

This is a printable full duplex on US Letter paper, to be folded in half and staple bound.
It requires the following packages:

- Poppler (`poppler-utils`)
- `psutils`

### Pamphlet
After running `make pdf`:

	$ make pamphlet

This is the same idea as the booklet, but only requires the `pdfpages` LaTeX package,
which your LaTeX installation probably already has.
It also preserves the true font size of the text.
