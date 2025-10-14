library(R6)

# Accumulator class
# 
# Examples
# -------
# > source("accumulator.R")
# > x <- Accumulator$new() 
# > x$total
# [1] 0
# > x$add(9)
# > x$total
# [1] 9
# > x$add(3)$add(4)$total
# [1] 16

Accumulator <- R6Class("Accumulator", list(
  total = 0,
  add = function(x = 1) {
    self$total <- self$total + x 
    invisible(self)
  }
))
