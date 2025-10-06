#a
normal_evidence <- function(x) {
  sample_mean <- mean(x)
  standard_deviation <- sqrt(var(x))

  quartiles <- c(0.25, 0.50, 0.75)
  sample_quartiles <- quantile(x, quartiles)
  total_length <- length(x)
  within_1st <- sum(x > sample_mean - standard_deviation &
                      x < sample_mean + standard_deviation)

  within_2nd <- sum(x > sample_mean - 2 * standard_deviation &
                      x < sample_mean + 2 * standard_deviation)


  within_3rd <- sum(x > sample_mean - 3 * standard_deviation &
                      x < sample_mean + 3 * standard_deviation)



  list(
       sample_mean,
       standard_deviation,
       sample_quartiles,
       c(100 * within_1st / total_length,
         100 * within_2nd / total_length,
         100 * within_3rd / total_length))
}

#b
print("all")
print(normal_evidence(dat$Sepal.Length))
#The median and mean are almost exactly equal,
#96% of the sample falls within two standard deviations.
# 100% of the sample falls within 3 standard deviations.
print("setosa")
print(normal_evidence(dat$Petal.Length[dat$Species == "setosa"]))
#The median and mean are close to equal,
#92% of the sample falls within two standard deviations.
# 100% of the sample falls within 3 standard deviations.
print("versicolor")
print(normal_evidence(dat$Petal.Length[dat$Species == "versicolor"]))
#The median and mean are close to each other,
#94% of the sample falls within two standard deviations.
# 100% of the sample falls within 3 standard deviations.
print("virginica")
print(normal_evidence(dat$Petal.Length[dat$Species == "virginica"]))
#The median and mean are very close to equal,
#94% of the sample falls within two standard deviations.
# 100% of the sample falls within 3 standard deviations.

#The data given by this function indicates that each
#distribution could be normal, which disagrees with my previous
#conclusion for the combined distribution not being normal.
#I don't think that this function is a good enough indication of
#normality because I think that a properly chosen mixed distribution
#could appear normal when only looking at these small number of quantiles
#and two datapoints for "density".

