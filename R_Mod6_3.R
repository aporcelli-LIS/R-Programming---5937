m<-matrix(nr=5,nc=5)
x=m[1,]<-c(1)
y=m[,1]<-(2)
diag(m)<-c(3) 
m[is.na(m)]=0
m
class(m)
