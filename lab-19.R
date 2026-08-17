# Q19: Simple Linear Regression

# Install package if required
# install.packages("ISLR2")

library(ISLR2)

# Load Advertising dataset
data(Advertising)

# Create Spend variable using TV advertising expenditure
Advertising$Spend <- Advertising$TV

# Display data
head(Advertising)

# Build regression model
model <- lm(
  Sales ~ Spend,
  data = Advertising
)

# Display model summary
summary(model)

# Display coefficients
print(coef(model))

# Predict Sales for a new Spend value
new_data <- data.frame(
  Spend = 100
)

predicted_sales <- predict(
  model,
  newdata = new_data
)

print(predicted_sales)

# Plot regression line
plot(
  Advertising$Spend,
  Advertising$Sales,
  main = "Advertising Spend vs Sales",
  xlab = "Advertising Spend",
  ylab = "Sales",
  pch = 19
)

abline(
  model,
  lwd = 2
)