#a
normal_evidence <- function(x) {
  sample_mean <- mean(x)
  standard_deviation <- sqrt(var(x))

  quartiles <- c(0.25, 0.50, 0.75)
  sample_quartiles <- quantile(x, quartiles)
  total_length <- length(x)
  within_1st <- length(subset(x, x > sample_mean - standard_deviation,
                              x < sample_mean + standard_deviation))

  within_2nd <- length(subset(x, x > sample_mean - 2 * standard_deviation,
                              x < sample_mean + 2 * standard_deviation))

  within_3rd <- length(subset(x, x > sample_mean - 3 * standard_deviation,
                              x < sample_mean + 3 * standard_deviation))


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
print("setosa")
print(normal_evidence(dat$Petal.Length[dat$Species == "setosa"]))
print("versicolor")
print(normal_evidence(dat$Petal.Length[dat$Species == "versicolor"]))
print("virginica")
print(normal_evidence(dat$Petal.Length[dat$Species == "virginica"]))
