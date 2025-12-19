\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2025/01/01 Resume class]

\LoadClass[11pt]{article}
\pagestyle{empty}

\usepackage[top=0.5in, left=0.65in, right=0.65in, bottom=0.5in]{geometry}
\RequirePackage{enumitem}
\RequirePackage{titlesec}
\RequirePackage{hyperref}
\RequirePackage{graphicx}


% ------------- Title -------------
\newcommand{\name}{Nathan Whittington}
\newcommand{\location}{Knoxville, Tn}
\newcommand{\email}{nwhitti1@vols.utk.edu}
\newcommand{\phone}{(865)621-2500}
\newcommand{\github}{\href{https://github.com/NathanW46}{github.com/NathanW46}}
\newcommand{\linkedin}{\href{https://linkedin.com/in/nathan-whittington}{linkedin.com/in/nathan-whittington}}

\renewcommand{\maketitle}{
    \begin{center}
        {\huge \textbf{\name}}\\[2mm]
        \location \quad | \quad \email \quad | \quad \phone\\[1mm]
        \github \quad | \quad \linkedin
      \end{center}\vspace{-10pt}
}
% ---------------------------------


% ------------ Section ------------
\titleformat{\section}{
  \vspace{-15pt}\scshape\raggedright\large
}{}{0em}{}[\titlerule \vspace{-7pt}]

\newenvironment{resumeSection}[1]
  {\section{#1}\begin{itemize}[leftmargin=*]}
  {\end{itemize}}
% ---------------------------------


\setlist[itemize,1]{
  label=\textbullet,
  leftmargin=*,
  topsep=3pt,
  itemsep=1pt,
  parsep=0pt,
  partopsep=0pt,
  labelsep=0.3em
}

\setlist[itemize,2]{
  label=$\circ$,
  leftmargin=2em,
  topsep=1pt,
  partopsep=0pt,
  itemsep=-2pt,
  rightmargin=5em
}

% ------------- lists -------------
% ------- Headings --------
\newcommand{\resumeSubheading}[4]{
  \item
    \begin{tabular*}{0.98\textwidth}{l@{\extracolsep{\fill}}r}
      \hspace{-0.5em}\textbf{#1} & #2 \\
      \hspace{-0.5em}\textit{\small#3} & \textit{\small #4} \\
    \end{tabular*}
}

% -------- Items ---------
\setlist[itemize]{rightmargin=0.0135\textwidth}
\newenvironment{resumeItemList}
  {\begin{itemize}}
  {\end{itemize}\vspace{1pt}}
\newcommand{\resumeItem}[2]{
  \item
  \begin{tabular*}{0.98\textwidth}{l@{\extracolsep{\fill}}r}
    \hspace{-0.5em}\textbf{#1} & \textit{#2} \\
  \end{tabular*}
}

\newenvironment{resumeDescription}
  {\begin{itemize}}
  {\end{itemize}}
% ---------------------------------
