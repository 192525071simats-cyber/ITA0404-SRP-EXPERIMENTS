n <- 12

cat("Factors are:\n")

for(i in 1:n)
{
  if(n %% i == 0)
    print(i)
}

x <- sample(-50:50, 10)

print(x)

for(i in 1:100)
{
  if(i %% 15 == 0)
    print("FizzBuzz")
  else if(i %% 3 == 0)
    print("Fizz")
  else if(i %% 5 == 0)
    print("Buzz")
  else
    print(i)
}