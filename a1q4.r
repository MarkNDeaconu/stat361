
within_2_of_mean <- pnorm(2, mean = 0, sd = 1) - pnorm(-2, mean = 0, sd = 1)

within_3_of_mean <- pnorm(3, mean = 0, sd = 1) - pnorm(-3, mean = 0, sd = 1)

print(within_2_of_mean)
print(within_3_of_mean)

prob_within_k <- function(norm_mean, standard_deviation, k) {
  lower <- -k*standard_deviation + norm_mean
  upper <- k * standard_deviation + norm_mean

  round(pnorm(upper,
  mean = norm_mean, sd = standard_deviation) - pnorm(lower,mean = norm_mean, sd = standard_deviation), 2) # nolint
}

print(prob_within_k(10, 5, 3))
print(prob_within_k(10, 5, 2))

print(prob_within_k(5, 5.4, 3))
print(prob_within_k(5, 5.4, 2))

print(prob_within_k(67.2, 87.3, 3))
print(prob_within_k(67.2, 87.3, 2))

#We can assume that P (|X − μ| ≤ 2σ) is approximately 0.95
# We can assume that P (|X − μ| ≤ 3σ) is approximately 1