# 2
# a)
par(mfrow = c(1, 1))
sampledata <- rnorm(1000, mean = 5, sd = sqrt(4))

probability_vector <- seq(0.05, 0.95, by = 0.05)

empirical_quantiles <- quantile(sampledata, probs = probability_vector)

print(empirical_quantiles)

# b

theoretical_quantiles <- qnorm(probability_vector, mean = 5, sd = sqrt(4))

print(theoretical_quantiles)

plot(theoretical_quantiles, empirical_quantiles)

# c
abline(a = 0, b = 1, col = "green", lwd = 2)

# The equation should be y=x, because the empirical quantiles
#should be close to the theoretical quantiles for a large sample size
