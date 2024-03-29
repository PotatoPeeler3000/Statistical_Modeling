set.seed(555)
y = rep(0, 1e6)
q <- c(5,50,500,5000)

#Run for different values of the quadratic equation
for(j in 1:4)
{
  x = sample(c(1:q[j], -(1:q[j])))
  for(i in 1:1e6)
  {
    #Pull three values from our range
    A = sample(x, 1)
    B = sample(x, 1)
    C = sample(x, 1)
    
    #Compute the roots and check if they are greater then zero
    total = (B^2) - (4*A*C)
    y[i] = total
    y[i] = (y[i] >= 0)
  }
  
  #Print probability for all values
  prob = sum(y)/1e6
  print(prob)
}

