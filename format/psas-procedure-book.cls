%----------------------------------------------------------------------------%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{psas-procedure-book}[2013/06/08 PSAS Procedure Book class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{letter}}
\ProcessOptions\relax
\LoadClass[10pt]{book}

%----------------------------------------------------------------------------%

\RequirePackage[paperwidth=5.5in,paperheight=8.5in,inner=1in,outer=0.5in,top=0.75in,bottom=0.75in]{geometry}
\usepackage{paralist}
	\let\itemize\compactitem
	\let\enditemize\endcompactitem
	\let\enumerate\compactenum
	\let\endenumerate\endcompactenum
	\let\description\compactdesc
	\let\enddescription\endcompactdesc
	\pltopsep=\medskipamount
	\plitemsep=1pt
	\plparsep=1pt


\renewcommand{\familydefault}{\sfdefault}
\renewcommand{\maketitle}{}
