library("DeliveryMan")

isCorner <-function(node){
  x <-node$x
  y <-node$y
  
  return ( (x==1 && y==1) ||
          (x==1 && y==10) ||
          (x==10 && y==1) ||
          (x==10 && y == 10) )
}

getNeighboursCorner <-function(node){
  x <-node$x
  y <-node$y
  n<-list()
  if(x==1 && y==10){
    return(n <-list(
                  c(2,10),
                  c(1,9)))
  }
  if(x==1 && y == 1){
    return(n <-list(
                    c(2,1),
                    c(1,2)))
  }
  if(x==10 && y == 1){
    return(n <-list(
                    c(9,1),
                    c(10,2)))
  }
  ##we have now checked all but the top right, so we assume it is top right corner
  return (n <-list(
                  c(9,10), 
                  c(10,9)))
}

isEdge <- function(node){
  x <-node$x
  y <-node$y
  return( (x == 1 || x == 10 || y == 1 || y == 10) && !isCorner(node))
}

getNeighboursEdge <-function(node){
  x <-node$x
  y <-node$y
  n <- list()
  if (x == 10){
    n <-list( 
             c(x-1, y),
             c(x, y-1),
             c(x, y+1))
  }
  if (x == 1){
    n <-list(
             c(x, y-1),
             c(x, y+1),
             c(x+1, y))
  }
  if (y == 10){
    n <-list(
             c(x-1, y),
             c(x+1, y),
             c(x, y-1))
  }
  if (y == 1){
    n <-list(
      c(x-1, y),
      c(x, y+1), 
      c(x+1, y))
  }
  return(n)
}

getNeighbours <-function(node){
  if (isCorner(node)){
    return (getNeighboursCorner(node))
  } else if (isEdge(node)){
      return (getNeighboursEdge(node))
    }
    x_curr <- node$x
    y_curr <- node$y
    
    p1 <- c(x_curr + 1, y_curr)
    p2 <- c(x_curr, y_curr + 1)
    p3 <- c(x_curr -1, y_curr)
    p4 <- c(x_curr, y_curr-1)
    result <- list(p1, p2, p3, p4)
  return (result)
}