#Declare Variables
x = rep(0:60)
y = rep(0, 1e6)

for (i in 1:1e6)
{
  person_a = sample(x, 1, replace=T)
  person_b = sample(x, 1, replace=T)
  
  values = c(person_a, person_b)
  
  y[i] = abs(diff(values)) <= 10
}
print(sum(y)/1e6)