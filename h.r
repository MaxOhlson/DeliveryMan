library("DeliveryMan")

h <-function(node, carInfo){
  
  x_curr <- node$x
  y_curr <- node$y
  
  x_goal <- carInfo$mem$goal[1]
  y_goal <- carInfo$mem$goal[2]
  
  return(manhattan(x_curr, y_curr, x_goal, y_goal))
  }