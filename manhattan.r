library("DeliveryMan")

manhattan <- function(x_curr, y_curr, x, y){
  x_dist <- abs(x - x_curr)
  y_dist <- abs(y - y_curr)
  
  return(x_dist + y_dist)
}