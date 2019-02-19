%%
%% This is file `uw-ece-wkrpt.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% uw-ece-wkrpt.dtx  (with options: `class')
%%
%% Copyright (C) 2002, 2003  Simon Law
%%
%%   This program is free software; you can redistribute it and/or modify
%%   it under the terms of the GNU General Public License as published by
%%   the Free Software Foundation; either version 2 of the License, or
%%   (at your option) any later version.
%%
%%   This program is distributed in the hope that it will be useful,
%%   but WITHOUT ANY WARRANTY; without even the implied warranty of
%%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%%   GNU General Public License for more details.
%%
%%   You should have received a copy of the GNU General Public License
%%   along with this program; if not, write to the Free Software
%%   Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307  USA
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uw-ece-wkrpt}[2017/01/05 v1.0 U of Waterloo Electrical and Computer Engineering work reports]

\def\uwwkrpt@textsize{11pt}

\DeclareOption{10pt}{\ClassWarning{uw-ece-wkrpt}{%
        You requested a 10pt font but reports must be \uwwkrpt@textsize}}
\DeclareOption{12pt}{\ClassWarning{uw-ece-wkrpt}{%
        You requested a 12pt font but reports must be \uwwkrpt@textsize}}

\DeclareOption*{\PassOptionsToClass {\CurrentOption}{article}}
\ProcessOptions
\LoadClass[titlepage,\uwwkrpt@textsize]{article}
\newlength{\marginl}
\newlength{\marginr}
\newlength{\margintb}

\setlength{\marginl}{1.5in}
\setlength{\marginr}{1in}
\setlength{\margintb}{1in}

\RequirePackage[top=\margintb, bottom=\margintb, left=\marginl, right=\marginr]{geometry}
\RequirePackage{setspace}
\newcommand{\uwwkrpt@spacing}{\onehalfspacing}
\newlength{\uwwkrpt@parskip}
\setlength{\uwwkrpt@parskip}{1ex}
\setlength{\parskip}{\uwwkrpt@parskip}
\RequirePackage{url}
\urlstyle{sf}
\renewcommand{\title}[1]{%
    \renewcommand{\@title}{#1}%
    \renewcommand{\@@title}{#1}}
\newcommand{\@@title}{\ClassError{uw-ece-wkrpt}%
    {No \noexpand\title given}{}}
\renewcommand{\author}[1]{%
    \renewcommand{\@author}{#1}%
    \renewcommand{\@@author}{#1}}
\newcommand{\@@author}{\ClassError{uw-ece-wkrpt}%
    {No \noexpand\author given}{}}
\renewcommand{\date}[1]{%
    \renewcommand{\@date}{#1}%
    \renewcommand{\@@date}{#1}}
\newcommand{\@@date}{\today}
\newcommand{\group}[1]{\renewcommand{\@group}{#1}}
\newcommand{\@group}{\ClassError{uw-ece-wkrpt}%
    {No \noexpand\group given}{}}
\newcommand{\school}[1]{\renewcommand{\@school}{#1}}
\newcommand{\@school}{\ClassError{uw-ece-wkrpt}%
    {No \noexpand\school given}{}}
\newcommand{\faculty}[1]{\renewcommand{\@faculty}{#1}}
\newcommand{\@faculty}{\ClassError{uw-ece-wkrpt}%
    {No \noexpand\faculty given}{}}
\newcommand{\email}[1]{\renewcommand{\@email}{#1}}
\newcommand{\@email}{\ClassError{uw-ece-wkrpt}%
    {No \noexpand\email given}{}}
\newcommand{\consultant}[1]{\renewcommand{\@consultant}{#1}}
\newcommand{\@consultant}{\ClassError{uw-ece-wkrpt}%
    {No \noexpand\consultant given}{}}
\newcommand{\confidential}[1]{\renewcommand{\@confidential}{#1}}
\newcommand{\@confidential}{}
\newcommand{\thetitle}{\@@title}
\newcommand{\theauthor}{\@@author}
\newcommand{\thegroup}{\@group}
\newcommand{\theschool}{\@school}
\newcommand{\thefaculty}{\@faculty}
\newcommand{\theemail}{\@email}
\newcommand{\theconsultant}{\@consultant}
\newcommand{\thedate}{\@@date}
\newcommand{\theconfidential}{\@confidential}
\RequirePackage{textcase}
\renewcommand{\maketitle}{%
    \pagenumbering{roman}%
    \begin{titlepage}
        \begin{singlespacing}
            \let\footnotesize\small
            \let\footnoterule\relax
            \let \footnote \thanks
            \begin{center}
                {\large \@school \par \@faculty}%
            \end{center}
            \null\vfill%
            \begin{center}%
                {\LARGE \@title \par}%
            \end{center}\par
            \null\vfill%
            \begin{center}%
                {\large \@group}%
            \end{center}\par
            \null\vfill%
            \begin{center}{%
                    \large%
                    Prepared by\\
                    \@author \par
                    Consultant: \@consultant \par}%
                {\large \@date \par}%
            \end{center}
            \@thanks
        \end{singlespacing}
    \end{titlepage}%
    \setcounter{footnote}{0}%
    \global\let\thanks\@gobble
    \global\let\maketitle\relax
    \global\let\@thanks\@empty
    \global\let\@author\@empty
    \global\let\@date\@empty
    \global\let\@title\@empty
    \global\let\title\relax
    \global\let\author\relax
    \global\let\consultant\relax
    \global\let\@consultant\@empty
    \global\let\date\relax
    \global\let\and\relax
}
\newcommand{\frontmatter}{%
    \clearpage
    \@notmainsect%
    \pagenumbering{roman}%
    \singlespacing%
}
\newcommand{\mainmatter}{%
    \clearpage
    \uwwkrpt@spacing
    \@mainsect%
    \pagenumbering{arabic}%
    \global\def\dotzero{}
    \global\def\@secdotzerostart##1{}
    \global\def\@secdotzeroend##1{}
    \global\def\@appendixtitle{}
}
\let\appendix@rig\appendix
\renewcommand{\appendix}{%
    \@mainsect%
    \renewcommand{\@appendixtitle}{Appendix }
    \appendix@rig%
}
\newcommand{\backmatter}{%
    \clearpage
    \@notmainsect%
    \singlespacing%
}
\newenvironment{summary}
{\@notmainsect}
{\@mainsect}
\newcommand{\@notmainsect}{%
    \def\@sect##1##2##3##4##5##6[##7]##8{%
        \@tempskipa ##5\relax
        \phantomsection%
        \ifdim \@tempskipa>\z@
        \begingroup
        ##6{%
            \@hangfrom{\hskip ##3}%
            \interlinepenalty \@M ##8\@@par}%
        \endgroup
        \csname ##1mark\endcsname{##7}%
        \addcontentsline{toc}{##1}{##7}%
        \else
        \def\@svsechd{%
            ##6{\hskip ##3\relax
                \@svsec ##8}%
            \csname ##1mark\endcsname{##7}%
            \addcontentsline{toc}{##1}{##7}}%
        \fi
        \@xsect{##5}}%
}

\newcommand{\@mainsect}{%
    \def\@sect##1##2##3##4##5##6[##7]##8{%
        \ifnum ##2>\c@secnumdepth
        \let\@svsec\@empty
        \else
        \refstepcounter{##1}%
        \@secdotzerostart{##1}
        \protected@edef\@svsec{\@appendixtitle\@seccntformat{##1}\relax}%
        \@secdotzeroend{##1}
        \fi
        \@tempskipa ##5\relax
        \ifdim \@tempskipa>\z@
        \begingroup
        ##6{%
            \@hangfrom{\hskip ##3\relax\@svsec}%
            \interlinepenalty \@M ##8\@@par}%
        \endgroup
        \csname ##1mark\endcsname{##7}%
        \addcontentsline{toc}{##1}{%
            \ifnum ##2>\c@secnumdepth \else
            \protect\numberline{\@appendixtitle\csname the##1\endcsname\dotzero}
            \protect\phantom{\@appendixtitle}%
            \fi
            ##7}%
        \else
        \def\@svsechd{%
            ##6{\hskip ##3\relax
                \@svsec ##8}%
            \csname ##1mark\endcsname{##7}%
            \addcontentsline{toc}{##1}{%
                \ifnum ##2>\c@secnumdepth \else
                \protect\numberline{\@appendixtitle\csname the##1\endcsname\dotzero}
                \protect\phantom{\@appendixtitle}%
                \fi
                ##7}}%
        \fi
        \@xsect{##5}}%
}

\let\section@rig\section
\newcommand{\@setletterpagenum}{}
\newcommand{\@setpostletterpagenum}{\setcounter{page}{0}}
\renewcommand{\@setletterpagenum}{\setcounter{page}{2}}
\renewcommand{\@setpostletterpagenum}{}
\renewcommand{\contentsname}{Table of Contents}
\newcommand{\toc@intoc}{\relax}
\let\tableofcontents@rig\tableofcontents
\renewcommand{\tableofcontents}{%
    \clearpage
    \begin{singlespacing}
        \setlength{\parskip}{0pt}
        \pdfbookmark[1]{\contentsname}{sec:table_of_contents}
        \tableofcontents@rig \toc@intoc \par
    \end{singlespacing}
}
\renewcommand*\l@section[2]{%
    \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    %\vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
    \parindent \z@ \rightskip \@pnumwidth
    \parfillskip -\@pnumwidth
    \leavevmode
    \advance\leftskip\@tempdima
    \hskip -\leftskip
    #1\nobreak\
    \leaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
        mu$}\hfil\nobreak\hb@xt@\@pnumwidth{\hss #2}\par
    \penalty\@highpenalty
    \endgroup
    \fi%
}
\newcommand{\listoffigures@intoc}{\relax}
\newcommand{\listoftables@intoc}{\relax}
\renewcommand{\listoffigures@intoc}{%
    \addcontentsline{toc}{section}{List of Figures}}
\renewcommand{\listoftables@intoc}{%
    \addcontentsline{toc}{section}{List of Tables}}
\let\listoffigures@rig\listoffigures
\renewcommand{\listoffigures}{%
    \clearpage
    \begin{singlespacing}
        \setlength{\parskip}{0pt}
        \listoffigures@rig \listoffigures@intoc%
    \end{singlespacing}
}
\let\listoftables@rig\listoftables
\renewcommand{\listoftables}{%
    \clearpage
    \begin{singlespacing}
        \setlength{\parskip}{0pt}
        \listoftables@rig \listoftables@intoc%
    \end{singlespacing}
}
\bibliographystyle{ieeetr}
\let\bib@rig\bibliography
\renewcommand{\bibliography}[1]{%
    \clearpage
    \begin{singlespacing}
        \bibliography@intoc \bib@rig{#1}\par
    \end{singlespacing}
}
\newcommand{\refn@me}{References}
\newcommand{\bibliography@intoc}{%
    \renewcommand{\refname}{%
        \addtocounter{section}{1}%
        \arabic{section}\hspace{2.5ex}\refn@me%
        \addcontentsline{toc}{section}{%
            \numberline{\arabic{section}}{\refn@me}}}%
}
\renewcommand{\bibliography@intoc}{%
    \addcontentsline{toc}{section}{\refn@me}}%
\endinput
%%
%% End of file `uw-ece-wkrpt.cls'.
