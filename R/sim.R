sim <- function(n) {
  x <- rbinom(n = n, size = 1, prob = 8/64)
  # quantile(x, c(0.025,0.975))
  y <- rbinom(n = n, size = 1, prob = 16/64)
  # quantile(y, c(0.025,0.975))
  df <- data.frame(region = factor(rep(c("n", "s"), each = n)), pa = c(x,y))
  mod1 <- glm(data = df, pa ~ region, family = "binomial")
  sumMod <- summary(mod1)
  return(sumMod$coefficients[2,4])
}

x <- replicate(10000, sim(1000))
hist(log(x), breaks = 300)
