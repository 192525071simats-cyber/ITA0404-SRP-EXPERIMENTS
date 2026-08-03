# Vector
v <- c(10,20,30)

# Matrix
m <- matrix(1:4, 2, 2)

# Function
fun <- function(x)
{
  x * x
}

# List
mylist <- list(v, m, fun)

print(mylist)

# Display contents
print(mylist[[1]])
print(mylist[[2]])
print(mylist[[3]](5))