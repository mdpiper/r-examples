library(R6)

# Employee class
#
# An Employee is a Person with additional fields: position (public) and salary (private).
# See `employee.Rmd` for examples.
Employee <- R6Class("Employee",
  inherit = Person,
  public = list(
    position = NULL,

    initialize = function(name, age = NA, position, salary) {
      super$initialize(name, age)
      stopifnot(is.character(position), length(position) == 1)
      stopifnot(is.numeric(salary), length(salary) == 1)

      self$position <- position
      private$salary <- salary
    },

    print = function(...) {
      cat("Employee: \n")
      cat("  Name:        ", self$name, "\n", sep = "")
      cat("  Age:         ", self$age, "\n", sep = "")
      cat("  Position:    ", self$position, "\n", sep = "")
      invisible(self)
    }
  ),
  private = list(
    salary = NA_real_
  )
)
