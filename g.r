library("DeliveryMan")
# Calculates g(newNode), 
g <-function(newNode, parentNode, trafficMatrix){
  
  oldCost <- parentNode$g
  newCost <- oldCost + cost(newNode, parentNode, trafficMatrix)
  return(newCost)
}