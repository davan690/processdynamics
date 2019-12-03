library(DiagrammeR)
grViz("
digraph boxes_and_circles {

  # a 'graph' statement
  graph [overlap = true, fontsize = 10]

  # several 'node' statements
  node [shape = box,
        fontname = Helvetica]
  rats; mice; stoats; possums

  node [shape = circle,
        fixedsize = true,
        width = 0.9] // sets as circles
  seed

  # several 'edge' statements
  possums->rats possums->stoats
  stoats->mice stoats->rats
  rats->mice mice->rats
  rats->seed mice->seed possums->seed
}
")
```
