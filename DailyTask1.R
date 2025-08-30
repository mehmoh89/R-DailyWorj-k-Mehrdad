# -----------------------------
# Daily Task: Data Exploration
# Author: Mehrdad
# Date: 2025-08-28
# -----------------------------

# Load built-in dataset
data("mtcars")

# Show first few rows
head(mtcars)

# Summary statistics
summary(mtcars)

# Calculate mean, median, and standard deviation of mpg
mean_mpg <- mean(mtcars$mpg)
median_mpg <- median(mtcars$mpg)
sd_mpg <- sd(mtcars$mpg)

cat("Mean mpg:", mean_mpg, "\n")
cat("Median mpg:", median_mpg, "\n")
cat("Standard Deviation mpg:", sd_mpg, "\n")

# Correlation between horsepower and mpg
cor_hp_mpg <- cor(mtcars$hp, mtcars$mpg)
cat("Correlation between horsepower and mpg:", cor_hp_mpg, "\n")

# Visualization
library(ggplot2)

# Scatter plot: Horsepower vs MPG
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "blue", size = 3) +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(
    title = "Horsepower vs Miles per Gallon",
    x = "Horsepower",
    y = "Miles per Gallon"
  ) +
  theme_minimal()

# Save plot to file
ggsave("hp_vs_mpg.png", width = 6, height = 4)
