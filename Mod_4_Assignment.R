Visits <- matrix(c(0.6,103,1,0,0,0.3,87,1,0,1,0.4,32,1,1,0,0.4,42,1,1,1,0.2,59,0,0,0,0.6,109,0,0,1,0.3,78,0,1,0,0.4,205,0,1,1,0.9,135,NA,1,1,0.2,176,1,1,1),ncol=5,byrow=TRUE)
colnames(Visits) <- c("Frequency","BP","First","Second","Final Decision")
rownames(Visits) <- c("Patient 1","Patient 2","Patient 3","Patient 4", "Patient 5", "Patient 6", "Patient 7", "Patient 8", "Patient 9", "Patient 10")
Visits <- as.table(Visits)
Visits
A<-c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
B<-c(103,87,32,42,59,109,78,205,135,176)
Frequency<-(A)
BloodPressure<-(B)
Frequency
BloodPressure
hist(Frequency,
     main="Hospital Visits",
     xlab="Frequency of Visits to Hospital",
     xlim=c(0,1),
     col="purple",
     border="Black"
)
BloodPressure
boxplot(BloodPressure~Frequency,main="Hospital Visits",yaxt="n",xlab="Blood Pressure",horizontal=TRUE,col=terrain.colors(5))
legend("topright", inset=.01,title="Frequency",c("0.6","0.3","0.4","0.2","0.9"),fill=terrain.colors(5),horiz=FALSE)