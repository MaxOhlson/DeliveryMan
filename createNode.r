library("DeliveryMan")

createNode <-function(x, y, parentNode){
  return(list(
                x = x,
                y = y,
                parent = parentNode,
                g = NULL
  ))
}