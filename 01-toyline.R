rm(list=ls())
a <- 3
b <- -6
sigSq <- 0.5
x <- runif(40)
y <- a + b * x + rnorm(40, sd = sigSq)

avgX <- mean(x)
write(avgX, "avgX.txt")

plot(x,y)
abline(a, b, col="red")
dev.print(pdf, "toylinePlot.pdf")
 