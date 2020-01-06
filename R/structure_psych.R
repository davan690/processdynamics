library(psych)
#A set of measurement and structural models
#First set up the various matrices
fx <-  matrix(c(.9,.8,.7,rep(0,9), .6,.7,-.8,rep(0,9),.5,.6,.4),ncol=3)
fy <- matrix(c(.9,.8,.6,rep(0,4),.6,.8,-.7),ncol=2)
Phi <- matrix(c(1,.35,0,0,0,
                .35,1,.5,0,0,
                0,.5, 1,0,0,
                .7,-.6, 0, 1,0,
                .0, 0, .4,0,1 ),ncol=5,byrow=TRUE)

#now draw a number of models 
f1 <- structure.diagram(fx,main = "A measurement model for x")
f2 <- structure.diagram(fx,Phi, main = "A measurement model for x")  
f3 <- structure.diagram(fy=fy, main = "A measurement model for y") 
f4 <- structure.diagram(fx,Phi,fy,main="A structural path diagram")            
f5 <- structure.diagram(fx,Phi,fy,main="A structural path diagram",errors=TRUE)

