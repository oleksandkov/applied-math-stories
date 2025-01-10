# Load the tibble package
library(tibble)

# Generate realistic height (cm) and weight (kg) data
set.seed(123) # For reproducibility

data <- tibble(
  height = round(rnorm(60, mean = 170, sd = 10), 1), # Heights centered around 170 cm
  weight = round(rnorm(60, mean = 70, sd = 12), 1)   # Weights centered around 70 kg
) %>% 
  mutate(
    weight_predicted = 30 + height*0.2 
  )

# Print the data
print(data)
g1 <- 
 data %>%
  ggplot(aes(x = height, y = weight)) + 
  #geom_abline(intercept = 50, slope = 0.1, color = "blue", linetype = "dashed", size = 1) + 
  geom_point(shape = 16)  + 
  geom_line(aes(y = weight_predicted), color = "blue")
  
  
g1
data 
y = 50 + x*0.1