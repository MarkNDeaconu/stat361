
bin_distribution <- dbinom(x = c(0, 1), 1, 0.5)

samples <- sample(x = c(0, 1), 100, replace = TRUE, prob = bin_distribution)

matrix_of_samples <- matrix(samples, 10, 10)

row1and7 <- append(matrix_of_samples[1, ], matrix_of_samples[3, ])

row1and3and7 <- append(row1and7, matrix_of_samples[7, ])

frequency_table <- table(row1and3and7)

count_of_1s <- frequency_table["1"]

inside_range <- 16 <= count_of_1s & count_of_1s < 20

print(matrix_of_samples)
print(frequency_table)
print(unname(count_of_1s))

print(inside_range)