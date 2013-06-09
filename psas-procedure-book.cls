%----------------------------------------------------------------------------%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{psas-procedure-book}[2013/06/08 PSAS Procedure Book class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{letter}}
\ProcessOptions\relax
\LoadClass[12pt]{book}

%----------------------------------------------------------------------------%

\RequirePackage[paperwidth=5.5in,paperheight=8.5in,inner=1in,outer=0.5in,top=0.5in,bottom=0.5in]{geometry}
\RequirePackage{pdfpages}


\renewcommand{\familydefault}{\sfdefault}
