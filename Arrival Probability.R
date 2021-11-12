x = runif(1e6, 0, 60)
y = runif(1e6, 0, 60)

array = abs(x - y) <= 10

print(sum(array)/1e6)
