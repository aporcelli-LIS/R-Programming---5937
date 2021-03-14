install.packages('ggplot2')
library(ggplot2)
df<-catsM[,c("Bwt","Hwt")]
ggplot(catsM, aes(x=Bwt,y=Hwt))+geom_point(size=3,shape=22,color="black", fill="purple")
