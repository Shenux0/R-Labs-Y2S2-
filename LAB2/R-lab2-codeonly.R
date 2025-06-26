# Function to find real roots of quadratic equation
quadratic_roots <- function(a, b, c) {
  # Calculate discriminant
  discriminant <- b^2 - 4*a*c
  
  if (discriminant > 0) {
    # Two real roots
    root1 <- (-b + sqrt(discriminant)) / (2*a)
    root2 <- (-b - sqrt(discriminant)) / (2*a)
    cat("Two real roots:\n")
    cat("Root 1:", root1, "\n")
    cat("Root 2:", root2, "\n")
    return(c(root1, root2))
  } else if (discriminant == 0) {
    # One real root (repeated)
    root <- -b / (2*a)
    cat("One real root (repeated):\n")
    cat("Root:", root, "\n")
    return(root)
  } else {
    # No real roots
    cat("No real roots (complex roots exist)\n")
    return(NULL)
  }
}

# Example usage:
# For equation x^2 - 5x + 6 = 0
quadratic_roots(1, -5, 6)

# For equation 2x^2 + 3x + 1 = 0
quadratic_roots(2, 3, 1)

x <- c(1,2,3)
result <- x[1]/x[2]^3-1+2*x[3]-x[2-1]
print(result)  # Output: 4.125

# Create appropriate x values
x_log <- seq(0.1, 10, by = 0.1)  # For log(x), avoid x <= 0
x_exp <- seq(-3, 3, by = 0.1)    # For exp(x), reasonable range

# Plot log(x)
par(mfrow = c(1, 2))  # Set up side-by-side plots

plot(x_log, log(x_log), 
     type = "l", 
     col = "blue", 
     lwd = 2,
     main = "Natural Logarithm Function",
     xlab = "x", 
     ylab = "log(x)",
     grid = TRUE)

# Plot exp(x)
plot(x_exp, exp(x_exp), 
     type = "l", 
     col = "red", 
     lwd = 2,
     main = "Exponential Function",
     xlab = "x", 
     ylab = "exp(x)",
     grid = TRUE)

# Reset plotting parameters
par(mfrow = c(1, 1))

# Function to count elements divisible by 3 in vector 1:K
count_divisible_by_3 <- function(K) {
  vector <- 1:K
  divisible_by_3 <- vector[vector %% 3 == 0]
  count <- length(divisible_by_3)
  
  cat("Vector:", vector, "\n")
  cat("Elements divisible by 3:", divisible_by_3, "\n")
  cat("Count of elements divisible by 3:", count, "\n")
  
  return(count)
}

# Example usage:
K <- 20
count_divisible_by_3(K)

# Alternative one-liner:
K <- 20
sum((1:K) %% 3 == 0)

# Function to check if two sets are disjoint
check_disjoint <- function(A, B) {
  # Find intersection
  common_elements <- intersect(A, B)
  
  if (length(common_elements) == 0) {
    cat("Sets A and B are disjoint (no common elements)\n")
    return(TRUE)
  } else {
    cat("Sets A and B are NOT disjoint\n")
    cat("Common elements:", common_elements, "\n")
    return(FALSE)
  }
}

# Example usage:
A <- c(1, 2, 3, 4, 5)
B <- c(4, 5, 6, 7, 8)
check_disjoint(A, B)

# Example with disjoint sets:
C <- c(1, 2, 3)
D <- c(7, 8, 9)
check_disjoint(C, D)

# Function using loop to find index of maximum value
find_max_index_loop <- function(vector) {
  if (length(vector) == 0) {
    return(NULL)
  }
  
  max_value <- vector[1]
  max_index <- 1
  
  # Loop through the vector
  for (i in 2:length(vector)) {
    if (vector[i] > max_value) {
      max_value <- vector[i]
      max_index <- i
    }
  }
  
  cat("Vector:", vector, "\n")
  cat("Maximum value:", max_value, "\n")
  cat("Index of maximum value:", max_index, "\n")
  
  return(max_index)
}

# Example usage:
test_vector <- c(3, 7, 2, 9, 1, 8, 5)
find_max_index_loop(test_vector)

# Function without loop to find index of maximum value
find_max_index_no_loop <- function(vector) {
  if (length(vector) == 0) {
    return(NULL)
  }
  
  max_index <- which.max(vector)
  max_value <- vector[max_index]
  
  cat("Vector:", vector, "\n")
  cat("Maximum value:", max_value, "\n")
  cat("Index of maximum value:", max_index, "\n")
  
  return(max_index)
}

test_vector <- c(3, 7, 2, 9, 1, 8, 5)
find_max_index_no_loop(test_vector) 