\documentclass{article}
\usepackage{tikz}
\usetikzlibrary{matrix}

\begin{document}
\begin{equation}
\begin{tikzpicture}[baseline=-0.8ex]
\matrix (m) [
  matrix of math nodes,
  row sep=2em,
  column sep=4em,
  text height=1.5ex, text depth=0.25ex
  ] {
    x      & x'      \\
        \hat x & \hat x' \\
  };
\path[->]
(m-1-1) edge node[above] {$L$} (m-1-2)
(m-2-1) edge node[left]  {$T$} (m-1-1)
(m-2-2) edge node[right] {$T$} (m-1-2)
(m-2-1) edge node[below] {$R$} (m-2-2);
\end{tikzpicture}   
\end{equation}
\end{document}