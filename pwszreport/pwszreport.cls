\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pwszreport}[2019/10/25 PWSZ report class]
\LoadClass[11pt]{article}

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[polish]{babel} % język polski
\RequirePackage[a4paper,left=3cm,right=3cm,top=2.5cm,bottom=2.5cm,includeheadfoot]{geometry} % geometria dokumentu
\RequirePackage{graphicx} % ilustracje
\RequirePackage{secdot} % kropki po numerach sekcji
\RequirePackage{indentfirst} % akapity
\RequirePackage[pdfusetitle]{hyperref} % odnośniki + metadane pdf

\linespread{1.3} % interlinia

\newif\ifcourse
\newif\ifsupervisor
\newif\ifspeciality
\newif\iflogo

\logotrue % domyślnie wyświetlaj logo
\DeclareOption{nologo}{\logofalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% dodatkowe komendy z metadanymi
\newcommand*{\course}[1]{\gdef\@course{#1} \coursetrue} % kurs
\newcommand*{\supervisor}[1]{\gdef\@supervisor{#1} \supervisortrue} % prowadzący
\newcommand*{\semester}[1]{\gdef\@semester{#1}} % semestr
\newcommand*{\speciality}[1]{\gdef\@speciality{#1} \specialitytrue} % semestr

% strona tytułowa
\renewcommand*{\maketitle}{
    \begin{titlepage}
        \centering
        \vspace*{\fill}

        \iflogo
            \includegraphics[scale=0.5]{pwszlogo.pdf}
            \vspace{1cm}
        \fi

        {\huge\textbf\@title}

        \ifcourse
            \vspace{1cm}

            {\Large\textbf{\textit{\@course}}}
            \ifsupervisor
                \\
                {\normalsize Prowadzący: \@supervisor}
            \fi
        \fi

        \vspace*{\fill}

        \begin{flushright}
            \textbf{\@author}\\
            \textbf{Informatyka, \ifspeciality\@speciality, \fi semestr \@semester}\\
            Wydział Nauk Technicznych i Ekonomicznych\\
            Państwowa Wyższa Szkoła Zawodowa\\
            im. Witelona w Legnicy
        \end{flushright}
    \end{titlepage}

    \setcounter{page}{2} % licz stronę tytułową
}
