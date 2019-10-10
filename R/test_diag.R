# looking at scales

# libraries
library(DiagrammeR)

# ?DiagrammeR

DiagrammeR::DiagrammeR("graph TB
   A-->B
   A-->C
   C-->E
   B-->D
   C-->D
   D-->F
   E-->F
")

DiagrammeR("graph LR;A(Rounded)-->B[Squared];B-->C{A Decision};
 C-->D[Square One];C-->E[Square Two];
 style A fill:#E5E25F;  style B fill:#87AB51; style C fill:#3C8937;
 style D fill:#23772C;  style E fill:#B6E6E6;")
