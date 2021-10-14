#Define Values
box = c(0, 0, 0, 0, 1, 1)
k = c(2, 3, 4, 5, 6)
storage = rep(0, 1e6)

#Simulation loop
for (i in 1:1e6)
{
  x = sample(box, 6)
  
  storage[i] = (max(which(box == x)))
}

#Print expected outputs
print(table(storage)/1e6)
print(sum(k * ((k - 1)/ (factorial(6) / (factorial(2) * factorial(6 -2))))))