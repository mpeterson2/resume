\LoadClassWithOptions{article}
\RequirePackage{titlesec, hyperref, parskip, color}
\RequirePackage[margin=0.8in]{geometry}
\RequirePackage{titlesec}
\RequirePackage{tabularx}

\titlespacing\section{0pt}{0pt plus 2pt minus 2pt}{0pt plus 2pt minus 2pt}

\pagenumbering{gobble}

% Name
\newcommand{\name}[1]{
  \par
  {\centering{\Huge\textsc{#1}}
  \bigskip\par}
}

% Section styling
\titleformat{\section}
{\Large\scshape\raggedright}
{}{0em}
{}
[\titlerule]

% Url color
\definecolor{linkcolour}{rgb}{0,0.2,0.6}
\hypersetup{colorlinks,breaklinks,urlcolor=linkcolour, linkcolor=linkcolour}

% Ending tables without a weird space
\newcommand{\tableend}{
  \end{tabularx}
  \vspace{-2em}
}

% Education
\newcommand{\education}[5]{
   \textsc{#3} & \textsc{#1 - #2} \\
   \textsc{#4} &
   #5 \\
   \multicolumn{2}{c}{} \\
}

% Project
\newcommand{\project}[3]{
  \textsc{#1} -- \href{#2}{#2} \\
  {#3}
}

% Work
\newcommand{\work}[5]{
  \textsc{#3} & #1 at \textsc{#2} \\
  \textsc{#4} & \small{#5} \\
  \multicolumn{2}{c}{} \\
}