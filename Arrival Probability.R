#Define Variables
x = runif(1e6, 0, 60)
y = runif(1e6, 0, 60)

#Compute difference
array = abs(x - y) <= 10

#Print probability
print(sum(array)/1e6)