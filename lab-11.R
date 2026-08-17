# Q11: Read and display CSV file

# Select the CSV file manually
data <- read.csv(file.choose())

# Display complete contents
print(data)

# Display first few rows
head(data)

# Display structure
str(data)

# Display summary
summary(data)