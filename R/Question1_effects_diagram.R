grViz("
digraph a_nice_graph {

# node definitions with substituted label text
node [fontname = Helvetica]
a [label = '@@1']
b [label = '@@2']
c [label = '@@3']
d [label = '@@4']

# edge definitions with the node IDs
a -> {b c d}
}

[1]: 'Question 1'
[2]: 'Banks are important'
[3]: 'I like banks'
[4]: 'I enjoy work'
")
