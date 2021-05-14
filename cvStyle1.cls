% first template
\LoadClass[paper=letterpaper,fontsize=14pt]{report}

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{cvStyle1}[2016/06/28 Curriculum Vitae Style 1]
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{enumitem}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{mdframed}
\RequirePackage{marvosym}
\RequirePackage[spanish,english]{babel}
\RequirePackage{fontspec}
\RequirePackage{fontawesome}
\RequirePackage[hidelinks]{hyperref}

\geometry{
    left=2.5cm,
    right=2.5cm,
    top=2.5cm,
    bottom=2.5cm,
}

\pagestyle{empty}

\renewcommand{\familydefault}{\sfdefault}


\newenvironment{header}
{
    \begin{mdframed}
    [backgroundcolor=White,linecolor=white,linewidth=10pt]
        \begin{center}
}
{
        \end{center}
    \end{mdframed}
    \textcolor{Blue}{\hrule}
}

\newcommand{\name}[2] {
    \huge{\textcolor{Blue}{#1 \textbf{#2}}}
}

\newcommand{\resume}[1]{
    \begin{minipage}[t]{.2\linewidth}
        \hspace{1\linewidth}
    \end{minipage}
    \hspace{.02\linewidth}
    \begin{minipage}[t]{.8\linewidth}
	    \fontsize{12pt}{14pt}\selectfont #1
        \newline
    \end{minipage}
    \newline
}

\newcommand{\experience}[3]{
    %\item[#1] #2 \\ #3
    \noindent
    \begin{minipage}[t]{.2\linewidth}
        \begin{flushright}
		\textbf{\fontsize{12pt}{14pt}\selectfont #1}
        \end{flushright}
    \end{minipage}
    \hspace{.02\linewidth}
    \begin{minipage}[t]{.8\linewidth}
        \noindent
	    \textbf{\fontsize{12pt}{14pt}\selectfont #2}
        
	    {\fontsize{12pt}{14pt}\selectfont #3}
        \vspace{2em}
        %\newline
    \end{minipage}
    \newline
}

\newcommand{\skill}[2]{
    \noindent
    \begin{minipage}[t]{.2\linewidth}
        \begin{flushright}
		\fontsize{12pt}{14pt}\selectfont #1
        \end{flushright}
    \end{minipage}
    \hspace{.02\linewidth}
    \begin{minipage}[t]{.8\linewidth}
        \noindent
	    {\fontsize{12pt}{14pt}\selectfont #2}
        \vspace{2em}
        %\newline
    \end{minipage}
    \newline
}

\newcommand{\contact}[3] {
	\fontsize{12pt}{14pt}\selectfont{\textcolor{gray}{#1 -- #2 -- \\ #3}}
}

\newcommand{\major}[1] {
    \large{#1}
}

\titleformat{\section}
[block]
{\fontsize{12pt}{14pt}\selectfont\bf\color{Blue}}
{}
{0em}
{\begin{minipage}{.2\linewidth}\colorbox{Blue}{\hspace{.95\linewidth}}\end{minipage}\hspace{0.95em}}
{}
