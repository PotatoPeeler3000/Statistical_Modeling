#Declare Varibles
set.seed(444)
nsim = 1e6
e =rep(0,nsim)

#Run simulation a million times
for(i in 1:nsim)
{
  #Draw ten dice with replacement
  x = sample(1:6,10,replace = T)
  w = (diff(x) == 0)
  e[i] = sum(w, na.rm=TRUE)
  
  #Convert all consecutive values(diff == 0) to TRUE
  e[i] = e[i] == 0
}

#Probability over a million simulations
probability = sum(e)/1e6
print(probability)

