rm(list=ls())
a <- 15
b <- -12
sigSq <- 0.5
x <- runif(2000)
y <- a + b * x + rnorm(2000, sd = sigSq)

avgX <- mean(x)
write(avgX, "scraps/avgX.txt")
 
plot(x,y)
abline(a, b, col="red")
dev.print(png, "results/toylinePlot.png")
 
