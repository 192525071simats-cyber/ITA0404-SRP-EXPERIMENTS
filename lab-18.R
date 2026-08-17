# Q18: Graphs in R

# Create sample data
x <- 1:5
y <- c(10, 20, 15, 25, 30)

# 1. Boxplot
boxplot(
  y,
  main = "Boxplot",
  ylab = "Values"
)

# 2. Histogram
hist(
  y,
  main = "Histogram",
  xlab = "Values"
)

# 3. Bar Plot
barplot(
  y,
  names.arg = c("A", "B", "C", "D", "E"),
  main = "Bar Plot",
  xlab = "Category",
  ylab = "Value"
)

# 4. Line Chart
plot(
  x,
  y,
  type = "o",
  main = "Line Chart",
  xlab = "X",
  ylab = "Y"
)

# 5. Scatter Plot
plot(
  x,
  y,
  main = "Scatter Plot",
  xlab = "X",
  ylab = "Y",
  pch = 19
)