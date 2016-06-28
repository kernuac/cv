% first template
\LoadClass[paper=letterpaper,fontsize=11pt]{report}

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{cvStyle1}[2016/06/28 Curriculum Vitae Style 1]

\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{mdframed}
\RequirePackage{marvosym}
\RequirePackage[spanish,english]{babel}

\geometry{
    left=2cm,
    right=2cm,
    top=2cm,
    bottom=2cm,
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
    \textcolor{OliveGreen}{\hrule}
}

\newcommand{\name}[2] {
    \LARGE{\textcolor{OliveGreen}{#1 \textbf{#2}}}
}
\newcommand{\resume}[1]{
    \begin{minipage}[t]{.3\linewidth}
        \hspace{1\linewidth}
    \end{minipage}
    \hspace{.02\linewidth}
    \begin{minipage}[t]{.7\linewidth}
        \normalsize#1
        \newline
    \end{minipage}
    \newline
}
\newcommand{\experience}[3]{
    %\item[#1] #2 \\ #3
    \noindent
    \begin{minipage}[t]{.3\linewidth}
        \begin{flushright}
            \textbf{\normalsize#1}
        \end{flushright}
    \end{minipage}
    \hspace{.02\linewidth}
    \begin{minipage}[t]{.7\linewidth}
        \noindent
        \textbf{\normalsize#2}
        \newline
        {\normalsize#3}
        \newline
    \end{minipage}
    \newline
}

\newcommand{\skill}[2]{
    \noindent
    \begin{minipage}[t]{.3\linewidth}
        \begin{flushright}
            \normalsize#1
        \end{flushright}
    \end{minipage}
    \hspace{.02\linewidth}
    \begin{minipage}[t]{.7\linewidth}
        \noindent
        \normalsize#2
        \newline
    \end{minipage}
    \newline
}

\newcommand{\contact}[3] {
    \normalsize{\textcolor{gray}{#1 -- #2 -- \ttfamily#3}}
}

\newcommand{\major}[1] {
    \large{#1}
}

\titleformat{\section}
[block]
{\large\bf\color{OliveGreen}}
{}
{0em}
{\begin{minipage}{.305\linewidth}\colorbox{OliveGreen}{\hspace{.95\linewidth}}\end{minipage}\hspace{0.85em}}
{}
