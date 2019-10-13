grViz("
digraph boxes_and_circles {

  # a 'graph' statement
  graph [overlap = true, fontsize = 10]

  # several 'node' statements
  node [shape = box,
        fontname = Helvetica,
        fill = grey50]
  Scrap

  node [shape = circle,
        fixedsize = true,
        width = 0.9] // sets as circles
  revtools; rmarkdown; report
  
  node [shape = triangle,
        fixedsize = true,
        width = 0.9] // sets as circles
  data

  # several 'edge' statements
  RStudio->GIT RStudio->R RStudio->Python R->Python GIT->www
}
")