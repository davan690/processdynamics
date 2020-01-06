# Packages needed for the test
library(DiagrammeR)

# grViz solution
grViz("digraph flowchart {
# node definitions with substituted label text
node [fontname = Helvetica, shape = rectangle]        
tab1 [label = '@@1', group=gr1]
tab2 [label = '@@2', group=gr2]
tab3 [label = '@@3', group=gr3]

invis1 [style = invis, shape=point, width = 0, group=gr1]
invis1a [style = invis, shape=point, width = 0, group=gr2]
invis1b [style = invis, shape=point, width = 0, group=gr3]

# edge definitions with the node IDs
edge [arrowhead='none']
tab1 -> invis1;
invis1a -> invis1 -> invis1b; {rank=same invis1a invis1 invis1b}
edge [arrowhead='normal']
invis1a -> tab2;
invis1b -> tab3; {rank=same tab2 tab3}}

[1]: 'Keyword search'
[2]: 'Scholar'
[3]: 'Web of Science'
")