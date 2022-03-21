gen_data <- function(seedz){ # function to simulate data (do not change) 
  if(is.na(seedz)==TRUE) return(print("change NA to YOUR Student No. (check student card)" ))
  n <- 100
  L <-matrix(0,n,n)
  diag(L[,-1]) <- 1
  set.seed(seedz)
  r <- as.data.frame(solve((diag(n)-0.45*L),(1+0.35*seq(1:n)+rnorm(n,0,10))))   
  return(r)
}
