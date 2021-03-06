library(DiagrammeR)
library(DiagrammeRsvg)
library(diagram)

grViz("
digraph nicegraph {

  # graph, node, and edge definitions
  graph [compound = true, nodesep = .5, ranksep = .25,
         color = crimson]

  node [fontname = Helvetica, fontcolor = darkslategray,
        shape = rectangle, fixedsize = true, width = 1,
        color = darkslategray]

  edge [color = grey, arrowhead = none, arrowtail = none]

  # subgraph for R Setup
  subgraph cluster0 {
    node [fixedsize = true, width = 3]
    '@@1-1' -> '@@1-2' -> '@@1-3' -> '@@1-4'
    '@@1-4' -> '@@1-5' -> '@@1-6' -> '@@1-7'
  }

  # subgraph for RStudio Setup
  subgraph cluster1 {
    node [fixedsize = true, width = 3]
    '@@2' -> '@@3'
  }

  Setup [width = 1.5]
  Setup -> R
  Setup -> RStudio
  R -> '@@1-1'            [lhead = cluster0]
  RStudio -> '@@2'        [lhead = cluster1]

}

[1]: paste0(names(R.Version())[1:7], ':\\n ', R.Version()[1:7])
[2]: paste0(R.Version()[13])
[3]: paste0('Current program mode:\\n ', rstudioapi::versionInfo()[[2]])

")

