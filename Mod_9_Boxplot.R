library("lattice")
df<-catsM[,c("Bwt","Hwt")]
#Create a boxplot
x<-bwplot(Bwt~Hwt,data=catsM,xlab="Heart Weight in grams")
print(x)

#Create a scatterplot
xyplot(Bwt~Hwt|factor(Bwt),data=catsM)
