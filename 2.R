debug(tukey_multiple)
tukey_multiple <- function(x) 
  { outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
  outlier.vec <-c(1:6, 7:12,(length=nrow(2)))
  for (i in 1:nrow(x))
  { outlier.vec[i] <- all(outliers[i,]) } 
}
return(outlier.vec)
