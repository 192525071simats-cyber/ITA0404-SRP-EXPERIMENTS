# Create data frame
exam_data <- data.frame(
  name = c("Ram", "Priya", "John"),
  score = c(90, 75, 85),
  attempts = c(1, 2, 1),
  qualify = c("Yes", "Yes", "Yes")
)

# Display
print(exam_data)

# Extract score column
print(exam_data$score)

# Add a row
exam_data <- rbind(exam_data,
                   data.frame(name="Ravi",
                              score=80,
                              attempts=1,
                              qualify="Yes"))

# Add a column
exam_data$Age <- c(20,21,20,22)

# Sort by score
exam_data <- exam_data[order(exam_data$score), ]

# Display updated data
print(exam_data)

# Save to file
write.csv(exam_data, "exam_data.csv", row.names=FALSE)