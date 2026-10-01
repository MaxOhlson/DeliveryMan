library("DeliveryMan")

AStar <-function(trafficMatrix, carInfo, packageMatrix){
  
  
  frontier <- list()
  visited  <- list()
  
  ## We start by initiating our current node
  start <- createNode(carInfo$x, carInfo$y, NULL)
  start$g <- 0
  frontier <- append(frontier, list(start))
  
  
  while (length(frontier) > 0){
    ## choose best node
    best <- bestNodeIndex(frontier, carInfo)
    
    ## remove it from frontier
    temp <- frontier[[best]]
    frontier[[best]] <- NULL
    
    ## add to visited
    visited <- append(visited, list(c(temp$x, temp$y)))
    
    ## check if goal
    
    if (temp$x == carInfo$mem$goal[1] && temp$y == carInfo$mem$goal[2]){
      return(getPath(temp))
    }
    
    ## get neighbours
    newNeighbours <-getNeighbours(temp)
    
    
    ## add neighbours to frontier
    for (neighbour in newNeighbours){
      
      if(!isVisited(neighbour[1], neighbour[2], visited)){
        ## if it is not visited, we check if it is in the frontier
        index <-frontierIndex(neighbour[1], neighbour[2], frontier)
        n <- createNode(neighbour[1], neighbour[2], temp)
        n$g <- g(n, temp, trafficMatrix)
        if(index == 0){
          frontier <- append(frontier, list(n))
        } else {
          ## It is not visited but is in frontier, so we need to compare the g values and update if we found a cheaper path
          if (n$g < frontier[[index]]$g){
            frontier[[index]] <- n
          }
        }
      }
    }
  }
    
  
}