library("DeliveryMan")


getNextMove <- function(trafficMatrix, carInfo, packageMatrix) {
  
  path <- AStar(trafficMatrix, carInfo, packageMatrix)
  
  if(carInfo$x == carInfo$mem$goal[1] &&
     carInfo$y == carInfo$mem$goal[2]){
    return(5)
  }
  
  current <- path[[1]]
  nextNode <- path[[2]]
  
  return(getMove(current, nextNode))
}