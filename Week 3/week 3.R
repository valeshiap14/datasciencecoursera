# Week 3 - Data Frames and Visualization
subjects <- c("Database", "C++", "DMW", "Python", "Statistics")
marks <- c(75, 80, 68, 90, 85)
study_hours <- c(10, 12, 8, 15, 14)

# Create data frame
results <- data.frame(subjects, marks, study_hours)

# View data frame
print(results)

# Plot marks vs study hours
plot(results$study_hours, results$marks,
     main="Study Hours vs Marks",
     xlab="Study Hours", ylab="Marks",
     pch=19, col="blue")
