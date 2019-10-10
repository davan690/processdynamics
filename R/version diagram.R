library(DiagrammeR)
library(DiagrammeRsvg)
library(diagram)

grViz("
digraph a_nice_graph {

# node definitions with substituted label text
node [fontname = Helvetica]
a [label = '@@1']
b [label = '@@2-1']
c [label = '@@2-2']
d [label = '@@2-3']
e [label = '@@2-4']
f [label = '@@2-5']
g [label = '@@2-6']
h [label = '@@2-7']
i [label = '@@2-8']
j [label = '@@2-9']

# edge definitions with the node IDs
a -> {b c d e f g h i j}
}

[1]: 'top'
[2]: 10:20
")

grViz("
digraph nicegraph {

  # graph, node, and edge definitions
  graph [compound = true, nodesep = .5, ranksep = .25,
         color = crimson]

  node [fontname = Helvetica, fontcolor = darkslategray,
        shape = rectangle, fixedsize = true, width = 1,
        color = darkslategray]

  edge [color = grey, arrowhead = none, arrowtail = none]

  # subgraph for R information
  subgraph cluster0 {
    node [fixedsize = true, width = 3]
    '@@1-1' -> '@@1-2' -> '@@1-3' -> '@@1-4'
    '@@1-4' -> '@@1-5' -> '@@1-6' -> '@@1-7'
  }

  # subgraph for RStudio information
  subgraph cluster1 {
    node [fixedsize = true, width = 3]
    '@@2' -> '@@3'
  }

  Information             [width = 1.5]
  Information -> R
  Information -> RStudio
  R -> '@@1-1'            [lhead = cluster0]
  RStudio -> '@@2'        [lhead = cluster1]

}

[1]: paste0(names(R.Version())[1:7], ':\\n ', R.Version()[1:7])
[2]: paste0('RStudio version:\\n ', rstudioapi::versionInfo()[[1]])
[3]: paste0('Current program mode:\\n ', rstudioapi::versionInfo()[[2]])

")

