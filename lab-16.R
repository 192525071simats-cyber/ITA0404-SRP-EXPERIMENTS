# Q16: EDA on USArrests dataset

# Load dataset
data(USArrests)

# Display first rows
head(USArrests)

# 1. Summary statistics
print(summary(USArrests))

# 2. State with largest Rape arrests
largest_rape <- rownames(
  USArrests
)[which.max(USArrests$Rape)]

print(largest_rape)

print(
  USArrests[which.max(USArrests$Rape), ]
)

# 3. Maximum Murder rate
max_murder_state <- rownames(
  USArrests
)[which.max(USArrests$Murder)]

print(max_murder_state)

print(
  max(USArrests$Murder)
)

# 4. Minimum Murder rate
min_murder_state <- rownames(
  USArrests
)[which.min(USArrests$Murder)]

print(min_murder_state)

print(
  min(USArrests$Murder)
)

# 5. Correlation among all features
correlation_matrix <- cor(USArrests)

print(correlation_matrix)

# 6. States above median Assault arrests
median_assault <- median(
  USArrests$Assault
)

above_median_assault <- USArrests[
  USArrests$Assault > median_assault,
]

print(above_median_assault)

# 7. Bottom 25% for Murder
murder_q1 <- quantile(
  USArrests$Murder,
  0.25
)

bottom_25_murder <- USArrests[
  USArrests$Murder <= murder_q1,
]

print(bottom_25_murder)

# -------------------------------
# VISUALIZATIONS
# -------------------------------

# 8. Histogram of Murder
hist(
  USArrests$Murder,
  main = "Histogram of Murder Arrests",
  xlab = "Murder Arrest Rate",
  col = "lightblue"
)

# 9. Density plot of Assault
plot(
  density(USArrests$Assault),
  main = "Density Plot of Assault",
  xlab = "Assault Arrest Rate"
)

# 10. Scatter plot: Murder vs Assault
plot(
  USArrests$Murder,
  USArrests$Assault,
  main = "Murder vs Assault",
  xlab = "Murder",
  ylab = "Assault",
  pch = 19
)

# 11. Scatter plot matrix
pairs(
  USArrests,
  main = "USArrests Scatter Plot Matrix"
)

# 12. Bar graph of Murder rates
barplot(
  USArrests$Murder,
  names.arg = rownames(USArrests),
  las = 2,
  cex.names = 0.5,
  main = "Murder Arrest Rates by State",
  ylab = "Murder Rate"
)