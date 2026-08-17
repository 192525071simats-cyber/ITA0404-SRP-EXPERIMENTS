# Q13: Combine multiple arrays row-wise

# Create first array
array1 <- array(
  1:6,
  dim = c(2, 3)
)

# Create second array
array2 <- array(
  7:12,
  dim = c(2, 3)
)

# Create third array
array3 <- array(
  13:18,
  dim = c(2, 3)
)

# Display arrays
print(array1)
print(array2)
print(array3)

# Combine arrays row-wise
combined_array <- rbind(
  array1,
  array2,
  array3
)

# Display combined array
print(combined_array)