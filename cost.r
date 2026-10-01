library("DeliveryMan")

# trafficMatrix = List(hroads,vroads), <1,1> is the bottom left
cost <- function(newNode, parentNode, trafficMatrix){
  
  cost <- NULL
  
  if (parentNode$x < newNode$x) {
    # moving right
    cost <- trafficMatrix$hroads[parentNode$x, parentNode$y]
    
  } else if (parentNode$x > newNode$x) {
    # moving left
    cost <- trafficMatrix$hroads[newNode$x, newNode$y]
    
  } else if (parentNode$y < newNode$y) {
    # moving up
    cost <- trafficMatrix$vroads[parentNode$x, parentNode$y]
    
  } else {
    # moving down
    cost <- trafficMatrix$vroads[newNode$x, newNode$y]
  }
  
  return(cost)
}