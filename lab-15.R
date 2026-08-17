# Q15: EDA on iris dataset

# Load iris dataset
data(iris)

# Display first rows
head(iris)

# 1. Dimensions
print(dim(iris))

# 2. Summary
print(summary(iris))

# 3. Standard deviation
print(sapply(
  iris[, 1:4],
  sd
))

# 4. Quantiles
print(sapply(
  iris[, 1:4],
  quantile
))

# 5. Grouping by Species
species_mean <- aggregate(
  iris[, 1:4],
  by = list(Species = iris$Species),
  FUN = mean
)

print(species_mean)

# 6. Pivot table
pivot_table <- with(
  iris,
  tapply(Sepal.Length, Species, mean)
)

print(pivot_table)

# 7. Create Sepal.Length categories
iris$Sepal_Category <- cut(
  iris$Sepal.Length,
  breaks = c(-Inf, 5.5, 6.5, Inf),
  labels = c("Short", "Medium", "Long")
)

# Display categories
print(head(iris))

# 8. Frequency table
category_table <- table(
  iris$Species,
  iris$Sepal_Category
)

print(category_table)

# 9. Mean Sepal.Length by category
category_mean <- aggregate(
  Sepal.Length ~ Sepal_Category,
  data = iris,
  FUN = mean
)

print(category_mean)