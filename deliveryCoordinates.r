library("DeliveryMan")

deliveryCoordinates <- function(carInfo, packageMatrix){
  
  return(packageMatrix[carInfo$load, c(3,4)])
}