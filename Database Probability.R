set.seed(555)

#Define values
database = c(1, 1, 1, 1, 1, 0, 0, 0, 0)
storage = rep(0, 1e6)

for (i in 1:1e6)
{
  #Get four values from the database
  x = sample(database,4)
  
  #Our keyword appears twice if the value of the sum is greater than 2
  storage[i] = sum(x)
  storage[i] = (storage[i] < 2)
}

#Print probability
print(storage)
print(1 - sum(storage)/1e6)