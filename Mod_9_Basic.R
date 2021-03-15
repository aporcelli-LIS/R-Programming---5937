library(readxl)
catsM <- read_excel("C:/Users/porce/Downloads/catsM.xlsx")
View(catsM)
catsM$Bwt
catsM$Hwt
plot(catsM$Bwt,catsM$Hwt)
