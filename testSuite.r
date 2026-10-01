library("DeliveryMan")

source("load.r")

results <- c()

for (i in 1:100) {
  turns <- runDeliveryMan(
    carReady = myFunction,
    dim = 10,
    turns = 2000,
    doPlot = FALSE,
    pause = 0,
    del = 5,
    verbose = FALSE
  )
  
  results <- c(results, turns)
  
  print(paste("Run", i, ":", turns, "turns"))
}

cat("\n")
cat("Average:", mean(results), "turns\n")
cat("Best:   ", min(results), "turns\n")
cat("Worst:  ", max(results), "turns\n")