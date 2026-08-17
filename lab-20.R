# Q20: Multiple Regression using ChickWeight

# Load dataset
data(ChickWeight)

# Convert Diet into factor
ChickWeight$Diet <- as.factor(
  ChickWeight$Diet
)

# Build multiple regression model
model <- lm(
  Weight ~ Time + Diet,
  data = ChickWeight
)

# Display model summary
summary(model)

# Display coefficients
print(coef(model))

# Predict Weight for existing observations
predicted_weight <- predict(
  model,
  newdata = ChickWeight
)

# Display first predictions
print(head(predicted_weight))

# Calculate error
actual_weight <- ChickWeight$Weight

error <- actual_weight - predicted_weight

# Mean Absolute Error
MAE <- mean(
  abs(error)
)

# Mean Squared Error
MSE <- mean(
  error^2
)

# Root Mean Squared Error
RMSE <- sqrt(MSE)

print(MAE)
print(MSE)
print(RMSE)