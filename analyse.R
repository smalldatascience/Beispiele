# load package
library(ISLR)
library(ggplot2)
data(College, package="ISLR")

# check if any observation contains missing info
identical(na.omit(College),College)

# ?College
str(College)

# Fit a linear model
m1 <- lm(Outstate ~ Expend, data=College)

# Create simple scatter plot with labels
plot(College$Expend, College$Outstate,
     xlab = "New x-lab title",
     ylab = "Out-of-state tuition")
abline(m1, col = "red", lwd = 3)