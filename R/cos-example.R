#devtools::install_github("timelyportfolio/DiagrammeR@feature/svg-mathjax"
library(DiagrammeR)

add_mathjax(
  grViz(
    '
digraph G {
  A [label="$\\\\cos (2\\\\theta) = \\\\cos^2 \\\\theta - \\\\sin^2 \\\\theta$"];
  A -> B;
}
'
  )
)
