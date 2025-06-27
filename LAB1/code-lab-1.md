# Introduction to R

## 1. Arithmetic Operations
```r
5 + 3
10 / 2
2^3
10 %% 3  # Modulo (remainder)
10 %/% 3 # Integer division
```

## 2. Variable Assignment
```r
x <- 10
y <- 20       # `=` can also be used for assignment.
z <- x + y
z
```

**Note:** R uses 1-based indexing.

## 3. Vectors
Vectors contain elements of the same data type.

### Creating vectors
```r
numbers <- c(1, 2, 3, 4, 5)
names <- c("John", "Smith", "Adam", "Nova")
logical_values <- c(TRUE, FALSE, TRUE)
```

### Vector operations
```r
numbers + 2 # Add 2 to each element
numbers * 3 # Multiply each element by 3
numbers + c(1, 2, 3, 4, 5) # Element-wise addition
```

### Accessing vector elements
```r
numbers[3]          # Access the 3rd element
numbers[c(1, 3, 5)] # Access the 1st, 3rd, and 5th elements
numbers[numbers > 3]  # Access elements using a logical condition
```

## 4. Factors
Factors are used for categorical data.
```r
gender <- factor(c("male", "female", "male", "male", "female"))
levels(gender)
as.numeric(gender) # Converts factors to their internal numeric codes.
```

Explicitly specify and order the levels.
```r
symptoms <- factor(c("mild", "severe", "moderate", "mild"),
                   levels = c("mild", "moderate", "severe"),
                   ordered = TRUE)
symptoms
```

## 5. Lists
Lists can contain elements of different data types.
```r
person <- list(
  name = "John Smith",
  age = 30,
  married = TRUE,
  children = c("Jane", "Tom")
)
```

### Accessing list elements
```r
person$name        # Access by name using `$`
person[[1]]        # Access by index using `[[`
person$children[2] # Access an element within a list's vector
```

## 6. Matrices
Matrices are 2D structures storing one data type.
```r
mat <- matrix(1:9, nrow = 3, ncol = 3)
mat
```

### Matrix operations
```r
mat * 2      # Multiply each element by 2
mat[2, 3]    # Access element at row 2, column 3
mat[2, ]     # Access entire row 2
mat[, 1]     # Access entire column 1
```

## 7. Data Frames
Data frames are table-like structures.
```r
students <- data.frame(
  name = c("Alice", "Bob", "Charlie"),
  age = c(22, 25, 23),
  grade = c("A", "B", "C"),
  pass = c(TRUE, TRUE, TRUE)
)
students
```

### Accessing data frame elements
```r
students$name    # Access column by name
students[1, ]    # Access first row
students[, "age"]# Access 'age' column
students[2, 3]   # Access element at row 2, column 3
```

## 8. Packages
Install a package (run once per machine)
```r
# install.packages("ggplot2")
```

Load a package for use in the current R session
```r
library(ggplot2)
```

## 9. Basic Plotting
Sample data
```r
x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)
```

Scatter plot using base R functions
```r
plot(x, y, main = "Simple Scatter Plot", xlab = "X-axis", ylab = "Y-axis")
```

Scatter plot using the `ggplot2` package
```r
data <- data.frame(x = x, y = y)
ggplot(data, aes(x = x, y = y)) +
  geom_point() +
  ggtitle("Scatter Plot with ggplot2")
```

## 10. Logical Operations
Logical operations on vectors
```r
x <- c(1, 3, 5, 7, 9)
x > 5
x[x > 5] # Filtering with a logical vector
```

Combining logical conditions
```r
x > 3 & x < 8  # AND operator
x < 3 | x > 7  # OR operator
``` 
