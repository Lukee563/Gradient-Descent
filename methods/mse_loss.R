mse_loss <- function(y, X, B){
  # This function will return the MSE loss 
  # Loss function will be defined as L(B) = (1/n)sum((y - XB)^2)
  
  if(is.matrix(X) == FALSE || is.matrix(y) == FALSE  || is.matrix(B) == FALSE ){
    stop("Inputs must be matrices")
  }
  
  return((1/nrow(X))*sum((y - X%*%B)^2))
  
}