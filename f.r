library("DeliveryMan")

f <-function(node, carInfo){
  gCost <- node$g
  hCost <- h(node, carInfo)
  return(gCost + hCost)
}