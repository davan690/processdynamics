library(DiagrammeR)

grViz("
digraph circo {

graph [layout = circo]

node [shape = circle,
      style = filled,
      color = grey]

node [fillcolor = red]


node [fillcolor = green]
predator mesopredator resource

edge [color = grey]
predator -> mesopredator -> resource
mesopredator -> {e f g h i j}
resource -> {k l m n o p}
predator -> {q r s t u v}
}")
