# Create a vector
v <- 1:12

# Create a 3D array
arr <- array(v,
             dim = c(2, 3, 2),
             dimnames = list(
               Row = c("R1", "R2"),
               Column = c("C1", "C2", "C3"),
               Table = c("Table1", "Table2")
             ))

cat("3D Array:\n")
print(arr)

# Print specific elements
cat("\nElement at R2, C3, Table1:\n")
print(arr["R2", "C3", "Table1"])

cat("\nElement at R1, C2, Table2:\n")
print(arr["R1", "C2", "Table2"])