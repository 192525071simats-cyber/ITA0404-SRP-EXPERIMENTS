# Predict weight for a new chick observation

new_chick <- data.frame(
  Time = 20,
  Diet = factor(
    "1",
    levels = levels(ChickWeight$Diet)
  )
)

prediction <- predict(
  model,
  newdata = new_chick
)

print(prediction)