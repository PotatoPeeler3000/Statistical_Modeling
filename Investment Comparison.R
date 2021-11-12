set.seed(444)
#Declare Variables
red = white = green = red_white = 1000
red_dice = c(0.05, 0.2, 1, rep(3,3))
white_dice = c(0.95, rep(1, 4), 1.1)
green_dice = c(0.8, 0.9, 1.1, 1.1, 1.2, 1.4)
r_values = rep(0, 1e6)
w_values = rep(0, 1e6)
g_values = rep(0, 1e6)
r_w_values = rep(0, 1e6)

for( i in 1:1e6)
{
  #Sample values and compute the resulting money amounts
  r20 = sample(red_dice, 20, replace=T)
  w20 = sample(white_dice, 20, replace=T)
  g20 = sample(green_dice, 20, replace=T)
  
  r_w_middle = (r20 + w20) / 2
  
  r_values[i] = red * prod(r20)
  w_values[i] = white * prod(w20)
  g_values[i] = green * prod(g20)
  
  r_w_values[i] = red_white * prod(r_w_middle)
}

#Format output for desired table effect
r_table = c(mean(r_values), min(r_values), quantile(r_values, 0.1), median(r_values), quantile(r_values, 0.9), max(r_values))
w_table = c(mean(w_values), min(w_values), quantile(w_values, 0.1), median(w_values), quantile(w_values, 0.9), max(w_values))
g_table = c(mean(g_values), min(g_values), quantile(g_values, 0.1), median(g_values), quantile(g_values, 0.9), max(g_values))
r_w_table = c(mean(r_w_values), min(r_w_values), quantile(r_w_values, 0.1), median(r_w_values), quantile(r_w_values, 0.9), max(r_w_values))

options(scipen = 100)
r = 3
results = matrix(c(round(r_table, digits = r), round(w_table, digits = r), round(g_table, digits = r), round(r_w_table, digits = r)),nrow = 6, ncol = 4)
colnames(results) = c("Red", "White", "Green", "Red-White")
rownames(results) = c("Mean", "Minimum", "10th Percentile", "Median", "90th Percentile", "Maximum")

print(results)