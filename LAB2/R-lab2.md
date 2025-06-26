# IT2110 - Probability & Statistics
## Lab Exercise 2: Introduction to R - Solutions
### Year 2 - Semester 2, 2025

---

## Problem 1: Quadratic Equation Real Roots

**Problem:** Compute the real roots of the quadratic equation in the form of ax² + bx + c = 0.

**Solution:**

```r
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
# For equation x² - 5x + 6 = 0
quadratic_roots(1, -5, 6)

# For equation 2x² + 3x + 1 = 0
quadratic_roots(2, 3, 1)
```

---

## Problem 2: Vector Computation (Without R)

**Problem:** Determine the result of: `x <- c(1,2,3)` then `x[1]/x[2]^3-1+2*x[3]-x[2-1]`

**Manual Calculation:**

Given: `x <- c(1,2,3)`, so `x[1] = 1`, `x[2] = 2`, `x[3] = 3`

Expression: `x[1]/x[2]^3-1+2*x[3]-x[2-1]`

Step by step:
- `x[1] = 1`
- `x[2]^3 = 2^3 = 8`
- `x[1]/x[2]^3 = 1/8 = 0.125`
- `2*x[3] = 2*3 = 6`
- `x[2-1] = x[1] = 1`

Final calculation: `0.125 - 1 + 6 - 1 = 4.125`

**R Code to verify:**

```r
x <- c(1,2,3)
result <- x[1]/x[2]^3-1+2*x[3]-x[2-1]
print(result)  # Output: 4.125
```

**Answer: 4.125**

---

## Problem 3: Plotting log(x) and exp(x)

**Problem:** Construct separate plots of log(x) and exp(x) using appropriate values.

**Solution:**

```r
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
```

---

## Problem 4: Elements Divisible by 3

**Problem:** Consider vector 1:K, where K is a positive integer. Write R command that determines how many elements are exactly divisible by 3.

**Solution:**

```r
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
```

---

## Problem 5: Disjoint Sets

**Problem:** Write an R expression to determine if two sets A and B (integer vectors) are disjoint. If not disjoint, print the common elements.

**Solution:**

```r
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
```

---

## Problem 6: Find Index of Maximum Value (With Loop)

**Problem:** Write a loop structure to scan through an integer vector to determine the index of the maximum value.

**Solution:**

```r
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
```

---

## Problem 7: Find Index of Maximum Value (Without Loop)

**Problem:** Do the same without using a loop.

**Solution:**

```r
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

# Example usage:
test_vector <- c(3, 7, 2, 9, 1, 8, 5)
find_max_index_no_loop(test_vector)

# Alternative methods:
# Method 1: Using which() and max()
vector <- c(3, 7, 2, 9, 1, 8, 5)
which(vector == max(vector))

# Method 2: Using match() and max()
match(max(vector), vector)
```

---

## Problem 8: Compound Interest Function

**Problem:** Write a function to calculate compound interest using the formula A = P(1 + r/100)^n, where P is original money, A is amount after n years at r% interest. Calculate for P = 5000, r = 11.5%, n = 1 to 15 years.

**Solution:**

```r
# Compound interest function
compound_interest <- function(P, r, n_years) {
  # Calculate amount for each year from 1 to n_years
  years <- 1:n_years
  amounts <- P * (1 + r/100)^years
  
  # Create a data frame for better presentation
  result <- data.frame(
    Year = years,
    Amount = round(amounts, 2),
    Interest_Earned = round(amounts - P, 2)
  )
  
  return(result)
}

# Calculate for given parameters
P <- 5000      # Principal amount (Rs.)
r <- 11.5      # Interest rate (%)
n <- 15        # Number of years

result <- compound_interest(P, r, n)
print(result)

# Plot the growth
plot(result$Year, result$Amount, 
     type = "b", 
     col = "blue", 
     lwd = 2,
     main = "Compound Interest Growth Over Time",
     xlab = "Years", 
     ylab = "Amount (Rs.)",
     pch = 16)

# Add grid for better readability
grid()

# Print summary
cat("Initial Principal: Rs.", P, "\n")
cat("Interest Rate:", r, "%\n")
cat("Final Amount after", n, "years: Rs.", round(result$Amount[n], 2), "\n")
cat("Total Interest Earned: Rs.", round(result$Interest_Earned[n], 2), "\n")
```

---

## Problem 9: Import Death Row.csv

**Problem:** Import the file "Death Row.csv" into R and identify the variables.

**Solution:**

```r
# Method 1: Using read.csv()
death_row_data <- read.csv("Death Row.csv", header = TRUE)

# Method 2: Using read.table()
# death_row_data <- read.table("Death Row.csv", header = TRUE, sep = ",")

# Display basic information about the dataset
cat("Dataset Information:\n")
cat("Number of rows:", nrow(death_row_data), "\n")
cat("Number of columns:", ncol(death_row_data), "\n")
cat("\nColumn names (Variables):\n")
print(names(death_row_data))

cat("\nData types of variables:\n")
print(str(death_row_data))

cat("\nFirst few rows:\n")
print(head(death_row_data))

cat("\nSummary statistics:\n")
print(summary(death_row_data))

# Check for missing values
cat("\nMissing values per column:\n")
print(sapply(death_row_data, function(x) sum(is.na(x))))
```

**Note:** Since the actual "Death Row.csv" file is not provided, the above code shows how to import and analyze any CSV file. The specific variables will depend on the content of the actual file.

---

## Additional Utility Functions

Here are some helper functions that might be useful:

```r
# Function to display vector information
vector_info <- function(vec) {
  cat("Vector:", vec, "\n")
  cat("Length:", length(vec), "\n")
  cat("Min:", min(vec), "\n")
  cat("Max:", max(vec), "\n")
  cat("Mean:", mean(vec), "\n")
  cat("Median:", median(vec), "\n")
}

# Function to create summary statistics
create_summary <- function(data) {
  if (is.numeric(data)) {
    return(list(
      min = min(data, na.rm = TRUE),
      max = max(data, na.rm = TRUE),
      mean = mean(data, na.rm = TRUE),
      median = median(data, na.rm = TRUE),
      sd = sd(data, na.rm = TRUE)
    ))
  } else {
    return(table(data))
  }
}
```

---

## Conclusion

This lab exercise covers fundamental R programming concepts including:

1. **Control Statements**: Conditional statements and loops
2. **Mathematical Functions**: Quadratic equations, logarithmic and exponential functions
3. **Vector Operations**: Indexing, mathematical operations, and logical operations
4. **Data Analysis**: Finding maximum values, set operations
5. **Financial Calculations**: Compound interest computations
6. **Data Import/Export**: Reading CSV files and data exploration
7. **Function Creation**: Custom functions with parameters and return values
8. **Data Visualization**: Basic plotting with appropriate parameters

All solutions are provided with clear explanations and example usage to demonstrate the concepts effectively.