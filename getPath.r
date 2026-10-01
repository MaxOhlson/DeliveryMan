library("DeliveryMan")

## Return the path from start to goalNode

reverseList <- function(List){
  correct <- list()
  
  for (i in length(List):1){
    curr <- List[[i]]
    correct <- append(correct, list(curr))
  }
  return(correct)
}

getPath <- function(goalNode){
  parent <- goalNode$parent
  pathList <- list(goalNode)
  while(!is.null(parent)){
    pathList <- append(pathList, list(parent))
    parent <- parent$parent
  }
  pathList <- reverseList(pathList)
  return(pathList) 
}