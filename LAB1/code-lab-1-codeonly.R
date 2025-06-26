5 + 3
10 / 2
2^3
10 %% 3  # Modulo (remainder)
10 %/% 3 # Integer division

x <- 10
y <- 20       # `=` can also be used for assignment.
z <- x + y
z

numbers <- c(1, 2, 3, 4, 5)
names <- c("Vishwa", "Kavishka", "Shen", "Kabi")
logical_values <- c(TRUE, FALSE, TRUE)

numbers + 2 # Add 2 to each element
numbers * 3 # Multiply each element by 3
numbers + c(1, 2, 3, 4, 5) # Element-wise addition

numbers[3]          # Access the 3rd element
numbers[c(1, 3, 5)] # Access the 1st, 3rd, and 5th elements
numbers[numbers > 3]  # Access elements using a logical condition

gender <- factor(c("male", "female", "male", "male", "female"))
levels(gender)
as.numeric(gender) # Converts factors to their internal numeric codes.

symptoms <- factor(c("mild", "severe", "moderate", "mild"),
                   levels = c("mild", "moderate", "severe"),
                   ordered = TRUE)
symptoms

person <- list(
  name = "John Smith",
  age = 30,
  married = TRUE,
  children = c("Jane", "Tom")
)

person$name        # Access by name using `$`
person[[1]]        # Access by index using `[[`
person$children[2] # Access an element within a list's vector

mat <- matrix(1:9, nrow = 3, ncol = 3)
mat

mat * 2      # Multiply each element by 2
mat[2, 3]    # Access element at row 2, column 3
mat[2, ]     # Access entire row 2
mat[, 1]     # Access entire column 1

students <- data.frame(
  name = c("Alice", "Bob", "Charlie"),
  age = c(22, 25, 23),
  grade = c("A", "B", "C"),
  pass = c(TRUE, TRUE, TRUE)
)
students

students$name    # Access column by name
students[1, ]    # Access first row
students[, "age"]# Access 'age' column
students[2, 3]   # Access element at row 2, column 3

# install.packages("ggplot2")

library(ggplot2)

x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)

plot(x, y, main = "Simple Scatter Plot", xlab = "X-axis", ylab = "Y-axis")

data <- data.frame(x = x, y = y)
ggplot(data, aes(x = x, y = y)) +
  geom_point() +
  ggtitle("Scatter Plot with ggplot2")

x <- c(1, 3, 5, 7, 9)
x > 5
x[x > 5] # Filtering with a logical vector

x > 3 & x < 8  # AND operator
x < 3 | x > 7  # OR operator 