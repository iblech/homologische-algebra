\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uebblatt}[2013/03/29 LaTeX class]

\LoadClass[a4paper,ngerman]{scrartcl}

\RequirePackage[utf8]{inputenc}
\RequirePackage[ngerman]{babel}
\RequirePackage{amsmath,amsthm,amssymb,amscd,color,graphicx,environ,tabto}
\RequirePackage[all]{xy}
\RequirePackage{framed}
\RequirePackage[protrusion=true,expansion=true]{microtype}
\RequirePackage{multicol}
\RequirePackage{lmodern}

\RequirePackage{geometry}
\geometry{tmargin=2cm,bmargin=2cm,lmargin=3.1cm,rmargin=3.1cm}

\RequirePackage{hyperref}

\usepackage{tikz}
\usetikzlibrary{calc,shapes.callouts,shapes.arrows}
\newcommand{\hcancel}[5]{%
    \tikz[baseline=(tocancel.base)]{
        \node[inner sep=0pt,outer sep=0pt] (tocancel) {#1};
        \draw[red, line width=0.3mm] ($(tocancel.south west)+(#2,#3)$) -- ($(tocancel.north east)+(#4,#5)$);
    }%
}

\setlength\parskip{\medskipamount}
\setlength\parindent{0pt}

\newif\ifloesungen\loesungenfalse
\newif\ifpruefung\pruefungfalse

\newlength{\titleskip}
\setlength{\titleskip}{1.5em}
\renewcommand{\maketitle}[2]{%
  \ifloesungen\else\pagestyle{empty}\fi%
  Universität Augsburg \hfill Sommersemester 2014 \\
  Lehrstuhl für Algebra und Zahlentheorie \\
  Prof. Marc Nieper-Wißkirchen \\
  Ingo Blechschmidt \\[0em]

  \begin{center}\Large \textbf{Übungsblatt #1 zur Homologischen Algebra I} \\[1em]
  \normalsize #2
  \end{center}
  \vspace{\titleskip}}

\renewcommand*\theenumi{\alph{enumi}}
\renewcommand{\labelenumi}{\theenumi)}

\newlength{\aufgabenskip}
\setlength{\aufgabenskip}{1.5em}
\newcounter{aufgabennummer}
\newenvironment{aufgabe}[1]{
  \addtocounter{aufgabennummer}{1}
  \textbf{Aufgabe \theaufgabennummer{}.} \emph{#1} \par
}{\vspace{\aufgabenskip}}
\newenvironment{aufgabeE}[1]{\begin{aufgabe}{#1}\begin{enumerate}}{\end{enumerate}\end{aufgabe}}

\definecolor{shadecolor}{rgb}{.93,.93,.93}

\NewEnviron{loesung}{%
  \ifloesungen%
    \begin{shaded}\textbf{Lösung. }\BODY\end{shaded}%
  \fi%
}
\NewEnviron{loesungE}{%
  \ifloesungen%
    \begin{shaded}\textbf{Lösung. }\begin{enumerate}\BODY\end{enumerate}\end{shaded}%
  \fi%
}

\clubpenalty=10000
\widowpenalty=10000
\displaywidowpenalty=10000

\newcommand{\lra}{\longrightarrow}
\newcommand{\lhra}{\ensuremath{\lhook\joinrel\relbar\joinrel\rightarrow}}
\newcommand{\thlra}{\relbar\joinrel\twoheadrightarrow}
\newcommand{\xra}[1]{\xrightarrow{#1}}

\newcommand{\ZZ}{\mathbb{Z}}
\newcommand{\FF}{\mathbb{F}}
\newcommand{\PP}{\mathbb{P}}
\renewcommand{\AA}{\mathbb{A}}
\newcommand{\A}{\mathcal{A}}
\newcommand{\C}{\mathcal{C}}
\newcommand{\D}{\mathcal{D}}
\newcommand{\E}{\mathcal{E}}
\newcommand{\F}{\mathcal{F}}
\newcommand{\G}{\mathcal{G}}
\renewcommand{\H}{\mathcal{H}}
\renewcommand{\O}{\mathcal{O}}
\newcommand{\K}{\mathcal{K}}
\renewcommand{\P}{\mathcal{P}}
\newcommand{\R}{\mathcal{R}}
\renewcommand{\S}{\mathcal{S}}
\newcommand{\NN}{\mathbb{N}}
\newcommand{\RR}{\mathbb{R}}
\newcommand{\QQ}{\mathbb{Q}}
\newcommand{\GG}{\mathbb{G}}
\newcommand{\ppp}{\mathfrak{p}}
\newcommand{\Hom}{\mathrm{Hom}}
\newcommand{\HOM}{\mathcal{H}\mathrm{om}}
\newcommand{\id}{\mathrm{id}}
\newcommand{\Aut}[1]{\operatorname{Aut}(#1)}
\newcommand{\GL}{\mathrm{GL}}
\newcommand{\placeholder}{\underline{\quad}}
\newcommand{\ul}[1]{\underline{#1}}
\newcommand{\Set}{\mathrm{Set}}
\newcommand{\Grp}{\mathrm{Grp}}
\newcommand{\Vect}{\mathrm{Vect}}
\newcommand{\Sh}{\mathrm{Sh}}
\newcommand{\PSh}{\mathrm{PSh}}
\newcommand{\Zar}{\mathrm{Zar}}
\newcommand{\Sch}{\mathrm{Sch}}
\newcommand{\sSet}{\mathrm{sSet}}
\newcommand{\Top}{\mathrm{Top}}
\newcommand{\op}{\mathrm{op}}
\DeclareMathOperator{\sk}{sk}
\DeclareMathOperator{\Spec}{Spec}
\DeclareMathOperator{\colim}{colim}
\DeclareMathOperator{\rank}{rank}
\DeclareMathOperator{\Ann}{Ann}
\DeclareMathOperator{\Int}{int}
\DeclareMathOperator{\Clos}{cl}
\DeclareMathOperator{\Kernel}{ker}
\newcommand{\Open}{\mathrm{Op}}
\newcommand{\?}{\,{:}\,}
\renewcommand{\_}{\mathpunct{.}\,}
\newcommand{\speak}[1]{\ulcorner\text{\textnormal{#1}}\urcorner}
\newcommand{\Ll}{:\Longleftrightarrow}
\newcommand{\notat}[1]{{!#1}}
\newcommand{\brak}[1]{{\llbracket{#1}\rrbracket}}
