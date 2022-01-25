data <- function(seedz){ # function to simulate data (do not change) 
  if(is.na(seedz)==TRUE) return(print("change NA to YOUR Studnet No. (check student card)" ))
  n <- 100
  L <-matrix(0,n,n)
  for (i in 1:n-1) L[i,(i+1)]<-1
  set.seed(seedz)
  series <- solve((diag(n)-0.4*L),(1+0.3*seq(1:n)+rnorm(n,0,5)))   
  return(series)
}