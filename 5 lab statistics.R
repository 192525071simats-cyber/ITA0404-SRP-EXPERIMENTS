# Women's dataset heights as factor
height_factor <- factor(women$height)

cat("Women's Height Factor:\n")
print(height_factor)

cat("\nLevels:\n")
print(levels(height_factor))

# Random LETTERS sample
set.seed(100)
letters_sample <- sample(LETTERS[1:5], 10, replace = TRUE)

cat("\nRandom Letters:\n")
print(letters_sample)

letter_factor <- factor(letters_sample)

cat("\nFactor Variable:\n")
print(letter_factor)

cat("\nLevels:\n")
print(levels(letter_factor))

cat("\nFrequency of Each Level:\n")
print(table(letter_factor))