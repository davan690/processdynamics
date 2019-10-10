grViz("
digraph boxes_and_circles {

  # a 'graph' statement
  graph [overlap = true, fontsize = 10]

  # several 'node' statements
  node [shape = box,
        fontname = Helvetica]
  Q1; Q2; Q3; Q4; Q5; error

  node [shape = circle,
        fixedsize = true,
        width = 0.9] // sets as circles
  1; 2; 3; 4; 5; 6; 7; 8

  # several 'edge' statements
  Q1->1 Q1->2 Q1->3 Q1->4 
  Q2->5 Q2->6 Q2->7 Q2->8 Q2->9 Q2->10 Q1->11 Q2->12 Q2->13 Q2->14
  Q3->15 Q3->16 Q3->17
  Q4->18 Q4->19
  Q5->20 Q5->21 Q5->22
  1->general 2->general 1->A 2->D 1->G 1->F
  E->6 4->V 5->C 6->H 3->M
}
")
