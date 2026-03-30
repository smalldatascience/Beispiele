# load package
library(ISLR)
data(College, package="ISLR")

# check if any observation contains missing info
identical(na.omit(College),College)

# ?College
str(College)

# Fit a linear model
m1 <- lm(Outstate ~ Expend, data=College)

plot(College$Expend, College$Outstate,
     xlab = "Instructional expenditure per student",
     ylab = "Out-of-state tuition")
abline(m1, col = "red", lwd = 3)