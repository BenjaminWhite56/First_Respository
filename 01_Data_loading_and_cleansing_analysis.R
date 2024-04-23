# Install the MASS package (if not already installed)
install.packages("MASS")

# Load the MASS package
library(MASS)

# Load a dataset from the MASS package
data(birthwt)

#load other libraries
# load libraries
library(dplyr)
library(lubridate)
library(readr)

#getting an Overview of the package
summary(birthwt)

# Load the openxlsx package (if not already installed)
install.packages("openxlsx")
library(openxlsx)

# Write the dataset to an Excel file
write.xlsx(birthwt, file = "birthwt.xlsx")

# Create a scatter plot of maternal age vs. infant birth weight

plot(birthwt$age, birthwt$bwt,
     xlab = "Maternal Age",
     ylab = "Infant Birth Weight (grams)",
     main = "Maternal Age vs. Infant Birth Weight",
     pch = 19, # Set the point shape to filled circles
     col = "blue" # Set the point color to blue
)

# Fit a linear regression model
model <- lm(bwt ~ age, data = birthwt)

# Add the regression line to the plot
abline(model, col = "red")

# Fit a linear regression model
model <- lm(bwt ~ age, data = birthwt)

# Print the summary of the regression model
summary(model)
