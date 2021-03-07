my_data <- read.table(file.choose(), sep =",", header = TRUE)

install.packages("plyr")
library(plyr)
y = ddply(my_data,"Sex",transform, Grade.Average=mean(Grade))
write.table(y, "mean_average", sep = ',')

x = subset(y,grepl("[iI]",y$Name))
z=grep("[iI]",(y$Name))
write.table(x, "Names_iI", sep = ',')

write.csv(x,file="Grep_Names", row.names=FALSE)
Grep_Names <- read.table(file.choose(), sep =",", header = TRUE)