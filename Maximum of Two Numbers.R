#Declare Variables
n1 = rep(0, 1e6)
n2 = rep(0, 1e6)
ne1 = c(4, 3, 2, 1)
ne2 = c(15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1)

#Expected value equation
exn1 = sum(( (2 * (ne1 - 1))/(4^2 - 4)) * ne1)
exn2 = sum(( (2 * (ne2 - 1))/(15^2 - 15)) * ne2)

#Simulation loop
for (i in 1:1e6)
{
  x = sample(1:4, 2)
  z = max(x)
  n1[i] = z
}
#Simulation loop
for(i in 1:1e6)
{
  x = sample(1:15, 2)
  z = max(x)
  n2[i] = z
}

#Print expected values
print(table(n1)/1e6)
print(table(n2)/1e6)
print(exn1)
print(exn2)