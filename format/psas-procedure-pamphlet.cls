%----------------------------------------------------------------------------%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{psas-procedure-pamphlet}[2018/02/19 PSAS Procedure Pamphlet class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{letter}}
\ProcessOptions\relax
\LoadClass[12pt]{book}

%----------------------------------------------------------------------------%

\RequirePackage[paperheight=8.5in,paperwidth=5.5in,inner=1.25in,outer=0.75in,top=0.75in,bottom=0.75in]{geometry}
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
