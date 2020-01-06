grViz("
      digraph Random{
      graph [layout = circo,
      overlap =T,
      outputorder = edgesfirst,
      bgcolor='white',
      splines=line]#controls l type setup
      edge[labelfontname='Arial',fontSize=13,color='red',fontcolor='navy']
      node [shape = box,style='filled',
      fillcolor='indianred4',width=2.5,
      fontSize=20,fontcolor='snow',
      fontname='Arial']#node shape
      a [label = 'Question']
      b [label = 'Data']
      c [label= 'Visualisation']
      d [label = 'Analysis']
      e [label = 'Output']
      a->b[color='red'] 
      b->c->d->e[color='dodgerblue']
      }")
