
bin_distribution <- dbinom(x = c(0, 1), 1, 0.5)

samples <- sample(x = c(0, 1), 100, replace = TRUE, prob = bin_distribution)

matrix_of_samples <- matrix(samples, 10, 10)

row1and7 <- append(matrix_of_samples[1, ], matrix_of_samples[3, ])

row1and3and7 <- append(row1and7, matrix_of_samples[7, ])

frequency_table <- table(row1and3and7)

count_of_1s <- frequency_table["1"]

inside_range <- 16 <= count_of_1s & count_of_1s < 20

percolumn1s <- apply(matrix_of_samples, 2, function(x) sum(x == 0))


# b)

x1 <- c(rep(1, 20))

x2 <- c(append(seq(from = 2, to = 20, by = 2), seq(from = 20, to = 2, by = -2)))

x3 <- c(seq(from = 1, to = 20, by = 1))

x <- cbind(x1, x2, x3)

xtx <- t(x) %*% x

invxtx <- solve(xtx)

# checksymmetric <- function(mat){
#     # issue with zerocount being NA
#     zerocount <- table(t(mat) %*% mat)["0"]
#     print(zerocount)
#     if(zerocount == (nrow(mat) * ncol(mat))){
#         return(TRUE)
#     }
#     else{
#         return(FALSE)
#     }
# }

# print(matrix_of_samples)
# print(frequency_table)
# print(unname(count_of_1s))

# print(inside_range)

# print(percolumn1s)

print(x1)

print(x2)

print(x3)

print(x)
print(xtx)
print(invxtx)

print(xtx - t(xtx))

print(invxtx - t(invxtx))

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


# 3
# a

