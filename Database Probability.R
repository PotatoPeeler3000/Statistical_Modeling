set.seed(555)

database = c(1, 1, 1, 1, 1, 0, 0, 0, 0)
storage = rep(0, 1e6)

for (i in 1:1e6)
{
  x = sample(database,4)
  
  storage[i] = sum(x)
  storage[i] = (storage[i] < 2)
  
  
}

print(storage)
print(1 - sum(storage)/1e6)