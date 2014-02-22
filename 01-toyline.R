n <- 401
a <- 3
b <- -6
sigSq <- 0.5
x <- runif(n)
y <- a + b * x + rnorm(n, sd = sigSq)

avgX <- mean(x)
write(avgX, "avgX.txt")

plot(x,y)
abline(a, b, col="green")
dev.print(pdf, "toylinePlot.pdf")
 