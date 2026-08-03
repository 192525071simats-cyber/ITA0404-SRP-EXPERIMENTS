
# Create a 3D array (2 Rows, 3 Columns, 2 Tables)
arr <- array(1:12,
             dim = c(2, 3, 2),
             dimnames = list(
               Row = c("R1", "R2"),
               Column = c("C1", "C2", "C3"),
               Table = c("Table1", "Table2")
             ))

cat("3D Array:\n")
print(arr)