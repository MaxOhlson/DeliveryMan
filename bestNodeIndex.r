library("DeliveryMan")

bestNodeIndex <-function(nodeList, carInfo){
  bestCost <- Inf
  bestIndex <- 1
  for(i in seq_along(nodeList)){
    curr <- nodeList[[i]]
    nodeCost = f(curr, carInfo)
    if(nodeCost < bestCost){
      bestCost <- nodeCost
      bestIndex = i
    }
  }
  return(bestIndex)
}