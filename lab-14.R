# Q14: ChickWeight dataset

# Load dataset
data(ChickWeight)

# Display dataset
head(ChickWeight)

# Display structure
str(ChickWeight)

# Summary
summary(ChickWeight)

# Sort data by Weight in ascending order
sorted_data <- ChickWeight[
  order(ChickWeight$Weight),
]

print(head(sorted_data))

# Sort by Weight in descending order
sorted_desc <- ChickWeight[
  order(-ChickWeight$Weight),
]

print(head(sorted_desc))

# Install reshape2 if required
# install.packages("reshape2")

library(reshape2)

# Melt the dataset
chick_long <- melt(
  ChickWeight,
  id.vars = c("Chick", "Time", "Diet"),
  measure.vars = "Weight",
  variable.name = "Measurement",
  value.name = "Value"
)

# Display melted data
print(head(chick_long))

# Cast data by Diet
chick_cast <- dcast(
  chick_long,
  Diet ~ Time,
  value.var = "Value",
  fun.aggregate = mean
)

# Display cast data
print(chick_cast)