# Q17: Titanic analysis

# Built-in Titanic dataset
data(Titanic)

# Convert Titanic table to data frame
titanic_df <- as.data.frame(Titanic)

# 1. Bar chart of Survival vs Class

survival_class <- xtabs(
  Freq ~ Class + Survived,
  data = titanic_df
)

barplot(
  survival_class,
  beside = TRUE,
  legend.text = TRUE,
  main = "Survival by Passenger Class",
  xlab = "Passenger Class",
  ylab = "Number of Passengers"
)

# 2. Survival vs Class modified by Gender

survival_gender <- xtabs(
  Freq ~ Class + Sex + Survived,
  data = titanic_df
)

# Display table
print(survival_gender)

# Bar plot by gender
barplot(
  survival_gender,
  beside = TRUE,
  legend.text = TRUE,
  main = "Titanic Survival by Class and Gender",
  xlab = "Passenger Class",
  ylab = "Number of Passengers"
)

# --------------------------------
# Age Histogram
# --------------------------------

# Install package once if required
# install.packages("titanic")

library(titanic)

data(titanic_train)

# Display age histogram
hist(
  titanic_train$Age,
  na.rm = TRUE,
  main = "Histogram of Passenger Age",
  xlab = "Age",
  ylab = "Frequency"
)