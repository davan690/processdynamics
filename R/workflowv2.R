grViz("
      digraph boxes_and_circles{
      graph [layout = circo]
      node [shape = 'box']#node shape
      a [label = 'Question']; 
      b [label = 'Data']; 
      c [label= 'Visualisation']; 
      d [label = 'Analysis']; 
      e [label = 'Output']
      
      node [shape = circle]#node shape
      f [label = 'Hard Science']; 
      g[label = 'Computational']; 
      h[label = 'Traditional Science']
      
      a->b->c->d->e [color='red'] 
      # b->c [color='dodgerblue']
      # c->d [color='dodgerblue']
      # d->e [color='dodgerblue']
      f->a [label = 'TRAIN']
      g->b [label = 'PRACT']
      h->c [label = 'SKILL']
      }")
