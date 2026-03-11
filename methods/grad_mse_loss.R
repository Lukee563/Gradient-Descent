grad_mse_loss <- function(y, X, B){
  # This function will return the negative gradient of the MSE loss function.
  # Initial loss function will be defined as L(B) = (1/n)sum((y - XB)^2)
  # Which has the negative gradient form of: \nabla L(B) = -\frac{2}{n}X^T(y - XB)
  
  if(is.matrix(X) == FALSE || is.matrix(y) == FALSE  || is.matrix(B) == FALSE ){
    stop("Inputs must be matrices")
  }
  
  return(-(2/nrow(X))*t(X)%*%(y-X%*%B))

}