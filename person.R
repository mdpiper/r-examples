library(R6)

# Person class
# 
# See `person.Rmd` for examples of usage.
#
Person <- R6Class("Person", list(

  name = NULL,
  age = NA,

  initialize = function(name, age = NA) {
    stopifnot(is.character(name), length(name) == 1)
    stopifnot(is.numeric(age), length(age) == 1)
    
    self$name <- name
    self$age <- age
  },

  print = function(...) {
    cat("Person: \n")
    cat("  Name: ", self$name, "\n", sep = "")
    cat("  Age:  ", self$age, "\n", sep = "")
    invisible(self)
  }
))
