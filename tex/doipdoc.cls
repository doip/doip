\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{stddoc}[2018/01/01 Document]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\RequirePackage[usenames,dvipsnames,svgnames,table]{xcolor}
\RequirePackage{hyperref}
\RequirePackage[utf8]{inputenc}
\RequirePackage{listings}
\RequirePackage{parskip}
\RequirePackage{array}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{longtable}
\RequirePackage{longfbox}

\hypersetup {
	colorlinks = true,
	linkcolor = blue,
	citecolor = blue,
    filecolor = blue,
	urlcolor = blue
}

\lstset{
%	language=Java,
%	basicstyle=\ttfamily\tiny,
	basicstyle=\ttfamily\footnotesize,
	numbers=left,
	tabsize=4,
	mathescape=false,
	numberstyle=\color{darkgray},
	frame=single,
	commentstyle=\color{OliveGreen},
	keywordstyle=\color{blue},
	stringstyle=\color{BrickRed}
}


\setlength{\hoffset}{-2.54cm}
\setlength{\voffset}{-2.54cm}
\setlength{\oddsidemargin}{2.5cm}
\setlength{\textwidth}{16cm}
\setlength{\textheight}{22cm}
\setlength{\headsep}{1cm}

\newcolumntype{R}[1]{>{\raggedleft\arraybackslash}p{#1}}
\newcolumntype{L}[1]{>{\raggedright\arraybackslash}p{#1}}
\newcolumntype{C}[1]{>{\centering\arraybackslash}p{#1}}

\setcounter{secnumdepth}{5}
\setcounter{tocdepth}{5}
\newcommand{\subsubsubsection}[1]
	{\paragraph{#1} $\;$\newline}
\newcommand{\subsubsubsubsection}[1]
	{\subparagraph{#1} $\;$\newline}


\newcommand{\todo}[1]{\colorbox{yellow}{\textbf{TODO:}} #1 }

\newcommand{\code}[1]{\colorbox{lightgray}{\texttt{#1}}}


\newcommand{\terminal}[1]{

\colorbox{darkgray}{\parbox{\linewidth}{\texttt{\textcolor{white}{\small{#1}}}}}

}


\newenvironment{terminalblock}
{\begin{longfbox}[breakable=true, border-color=darkgray, background-color=darkgray, padding-top=-0.4em, padding-bottom=-0.05em, width=\textwidth]
\color{white}\small\ttfamily}
{\end{longfbox}}

