library("DeliveryMan")

isVisited <-function(x, y, visitedList){
  for (coordinate in visitedList){
    if (x == coordinate[1] && y == coordinate[2]){
      return(TRUE)
    }
  }
  return(FALSE)
}