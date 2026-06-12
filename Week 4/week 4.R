# Week 4 - Functions and Data Import (readr version)

# Load tidyverse library
library(readr)
library(dplyr)

# Step 1: Import your CSV file
# Make sure 'sample-simple.csv' is uploaded in your working directory
data <- read_csv("~/Week 4/sample-simple.csv")

# Step 2: Define helper functions
categorize_age <- function(age) {
  if (age < 30) {
    return("Young")
  } else if (age < 50) {
    return("Mid-age")
  } else {
    return("Senior")
  }
}

categorize_salary <- function(salary) {
  if (salary >= 150000) {
    return("High")
  } else if (salary >= 50000) {
    return("Medium")
  } else {
    return("Low")
  }
}

# Step 3: Apply functions to create new columns
data <- data %>%
  mutate(
    AgeGroup = sapply(age, categorize_age),
    SalaryLevel = sapply(salary, categorize_salary)
  )

# Step 4: Display results
print(data)

# Step 5: Quick visualization using base R
plot(data$age, data$salary,
     main = "Age vs Salary",
     xlab = "Age",
     ylab = "Salary",
     pch = 19,
     col = "darkgreen")

# Step 6: Optional ggplot2 visualization
library(ggplot2)
ggplot(data, aes(x = age, y = salary, color = SalaryLevel)) +
  geom_point(size = 3) +
  labs(title = "Salary by Age Group",
       x = "Age",
       y = "Salary") +
  theme_minimal()


