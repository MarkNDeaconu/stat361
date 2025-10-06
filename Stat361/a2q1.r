#a
dat = iris

par(mfrow = c(1, 2))

print(head(dat))
boxplot(dat$Petal.Length, main = "Petal Length Boxplot")
#attach gave me problems on re-run
boxplot(Petal.Length ~ Species, data = dat,
        main = "Petal Length Per Species Boxplots")

#It is not reasonable to describe the petal lengths by a common distribution because it's clear that the ranges of petal lenghts vary widely by species, and even the variance is very difference across species. #nolint

#b
par(mfrow = c(2, 2))

qqnorm(dat$Petal.Length,
       main = "Normal Q-Q Plot of Petal Length",
       xlab = "Theoretical Quantiles",
       ylab = "Sample Quantiles")

abline(a = mean(dat$Petal.Length), b = sqrt(var(dat$Petal.Length)))

setosa_petal_lengths <- dat$Petal.Length[dat$Species == "setosa"]

qqnorm(setosa_petal_lengths,
       main = "Normal Q-Q Plot of Setosa Petal Length",
       xlab = "Theoretical Quantiles",
       ylab = "Sample Quantiles")

abline(a = mean(setosa_petal_lengths), b = sqrt(var(setosa_petal_lengths)))

versicolor_petal_lengths <- dat$Petal.Length[dat$Species == "versicolor"]

qqnorm(versicolor_petal_lengths,
       main = "Normal Q-Q Plot of Versicolor Petal Length",
       xlab = "Theoretical Quantiles",
       ylab = "Sample Quantiles")

abline(a = mean(versicolor_petal_lengths),
       b = sqrt(var(versicolor_petal_lengths)))

virginica_petal_lengths <- dat$Petal.Length[dat$Species == "virginica"]

qqnorm(virginica_petal_lengths,
       main = "Normal Q-Q Plot of Virginica Petal Length",
       xlab = "Theoretical Quantiles",
       ylab = "Sample Quantiles")

abline(a = mean(virginica_petal_lengths),
       b = sqrt(var(virginica_petal_lengths)))

#From these plots I have found that the distribution of each individual species' petal lengths show strong signs of normality, and likely follow a normal distribution. This was because their Q-Q plot follows along the line almost exactly for each individual species sample. However, the combination of the samples does not seem to follow a normal distribution, as the plot is more S shaped around the line we plotted. This is likely because of our previous findings that indicate that the total distribution is a sum of three distributions of varying mean and variance, and therefore is not normal itself. #nolint