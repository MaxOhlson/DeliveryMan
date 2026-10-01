library("DeliveryMan")

## Returns the index of x,y in frontier, 0 if its not in frontier
frontierIndex <- function(x, y, frontier){
  for (i in seq_along(frontier)){
    node <- frontier[[i]]
    
    if(x == node$x && y == node$y){
      return(i)
    }
  }
  
  return(0)
}