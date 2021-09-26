set.seed(432)
bag <- c(3, 3, 3, 3, 3, 3, 6, 6, 6, 6, 6, 9, 9, 9, 9)
storage = rep(0, 1e6)

for(i in 1:1e6)
{
  pick <- sample(bag, 3)
  
  equal = abs(diff(pick))
  #print(equal)
  #print("--- sotrage ---a")
  storage[i] = sum(equal, na.rm=TRUE)
  #print(storage[i])
  storage[i] = (storage[i] == 0)
  #print(storage[i])
  
}
probability = sum(storage)/1e6
print(probability)