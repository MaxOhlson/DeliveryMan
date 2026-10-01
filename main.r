library("DeliveryMan")

myFunction <-function(trafficMatrix, carInfo, packageMatrix){
  
  #If we have no package, we must update where we want to go
  if (!hasPackage(carInfo)){
    carInfo$mem$goal <- nextPackage(trafficMatrix, carInfo, packageMatrix)
  } else {
    carInfo$mem$goal <- deliveryCoordinates(carInfo, packageMatrix)
  }
  #If we have a package, we are headed somewhere, get the next move to get to somewhere
  
  carInfo$nextMove <-getNextMove(trafficMatrix, carInfo, packageMatrix)
  
  return (carInfo)
}