# 2
# a)
sampledata <- rnorm(1000, mean = 5, sd = sqrt(4))

probability_vector <- seq(0.05, 0.95, by = 0.05)

empirical_quantiles <- quantile(sampledata, probs = probability_vector)

print(empirical_quantiles)

# b

theoretical_quantiles <- qnorm(probability_vector, mean = 5, sd = sqrt(4))


plot(theoretical_quantiles, empirical_quantiles)

abline(a = 0, b = 1, col = "darkgreen", lwd = 2)

# y=x