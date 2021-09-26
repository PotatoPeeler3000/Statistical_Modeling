set.seed(444)
nsim = 1e6
e =rep(0,nsim)
for(i in 1:nsim)
{
  x = sample(1:6,10,replace = T)
  w = (diff(x) == 0)
  e[i] = sum(w, na.rm=TRUE)
  e[i] = e[i] == 0
}
probability = sum(e)/1e6
print(probability)

