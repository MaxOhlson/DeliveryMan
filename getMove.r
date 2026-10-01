library("DeliveryMan")

getMove <-function(current, nextNode){
  if(nextNode$x > current$x){
    return(6)
  } else if (nextNode$x < current$x){
    return(4)
  } else if (nextNode$y > current$y){
    return(8)
  } else if (nextNode$y < current$y){
    return(2)
  } else{
    return(5)
  }
}