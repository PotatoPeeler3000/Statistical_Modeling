set.seed(432)
bag <- c(3, 3, 3, 3, 3, 3, 6, 6, 6, 6, 6, 9, 9, 9, 9)
storage = rep(0, 1e6)

for(i in 1:1e6)
{
  #Sample three values from the bag without replacement
  pick <- sample(bag, 3)
  equal = abs(diff(pick))
  
  #Convert the difference of the bag values into true and false
  storage[i] = sum(equal, na.rm=TRUE)
  storage[i] = (storage[i] == 0)
}

#Print probability
probability = sum(storage)/1e6
print(probability)