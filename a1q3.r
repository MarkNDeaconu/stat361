# 3
dat = iris
print(head(dat))
par(mfrow = c(2, 2))

hist(dat[["Sepal.Width"]],
      main = "Iris setosa sepal width histogram",
      xlab = "Sepal Width", 
      probability = TRUE, ylim = c(0, 1.5), xlim = c(2, 4.5))

curve(dnorm(x,
            mean = mean(dat[["Sepal.Width"]]),
            sd   = sd(dat[["Sepal.Width"]])),
      col = "red", lwd = 2, add = TRUE)

hist(dat[dat$Species == "setosa", "Sepal.Width"],
      main = "Setosa sepal width histogram",
      xlab = "Sepal Width",
      probability = TRUE, ylim = c(0, 1.5), xlim = c(2, 4.5))

curve(dnorm(x,
            mean = mean(dat[["Sepal.Width"]]),
            sd   = sd(dat[["Sepal.Width"]])),
      col = "red", lwd = 2, add = TRUE)

hist(dat[dat$Species == "versicolor", "Sepal.Width"],
      main = "Versicolor sepal width histogram",
      xlab = "Sepal Width",
      probability = TRUE, ylim = c(0, 1.5), xlim = c(2, 4.5))

curve(dnorm(x,
            mean = mean(dat[["Sepal.Width"]]),
            sd   = sd(dat[["Sepal.Width"]])),
      col = "red", lwd = 2, add = TRUE)

hist(dat[dat$Species == "virginica", "Sepal.Width"],
      main = "Virginica sepal width histogram",
      xlab = "Sepal Width",
      probability = TRUE, ylim = c(0, 1.5), xlim = c(2, 4.5))

curve(dnorm(x,
            mean = mean(dat[["Sepal.Width"]]),
            sd   = sd(dat[["Sepal.Width"]])),
      col = "red", lwd = 2, add = TRUE)


# The histograms all seem to rougly follow a normal curve
# I decided to apply the same normal curve to each
# histogram because one could assume
# that the sepal width of an iris would
# be similar across different species.
#The plots seem to confirm this

#Moreover, I made the plots probability density based
#instead of frequency based, In order to normalize all
#the histograms