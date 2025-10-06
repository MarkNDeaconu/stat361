# 1. a) i
bin_distribution <- dbinom(x = c(0, 1), 1, 0.5)

samples <- sample(x = c(0, 1), 100, replace = TRUE, prob = bin_distribution)

B <- matrix(samples, 10, 10)
print(B)

# ii
row1and7 <- append(B[1, ], B[3, ])
row1and3and7 <- append(row1and7, B[7, ])
print(row1and3and7)

frequency_table <- table(row1and3and7)


count_of_1s <- frequency_table["1"]
inside_range <- 16 <= count_of_1s & count_of_1s < 20
print(inside_range)
# iii
percolumn1s <- apply(B, 2, function(x) sum(x == 0))
print(percolumn1s)





# b)
x1 <- c(rep(1, 20))
x2 <- c(append(seq(from = 2, to = 20, by = 2), seq(from = 20, to = 2, by = -2)))
x3 <- c(seq(from = 1, to = 20, by = 1))

x <- cbind(x1, x2, x3)

xtx <- t(x) %*% x

invxtx <- round(solve(xtx), 5)

print(x)
print(xtx)
print(invxtx)
print(xtx - t(xtx))
print(invxtx - t(invxtx))


#Based on the previous results, both matrices are symmetric