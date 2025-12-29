set.seed(123)


# Sample datasets -----------------------------

sample1 <- data.frame(
  Subgroup = 1:20,
  X1 = rnorm(20, 10, 0.3),
  X2 = rnorm(20, 10, 0.3),
  X3 = rnorm(20, 10, 0.3),
  X4 = rnorm(20, 10, 0.3),
  X5 = rnorm(20, 10, 0.3)
)

sample1[5, 2]  <- sample1[5, 2] + 2.5
sample1[12, 6] <- sample1[12, 6] - 2.7
sample1[8, 3] <- sample1[8, 3] + 0.75
sample1[9, 5] <- sample1[9, 5] - 0.95
sample1[3, 5] <- sample1[3, 5] - 1.05
sample1[16, 3] <- sample1[16, 3] - 0.95
sample1[10, 6] <- sample1[10, 6] + 0.5

sample2 <- data.frame(
  Subgroup = 1:20,
  X1 = seq(9.5, 10.8, length.out = 20) + rnorm(20, 0, 0.15),
  X2 = seq(9.6, 10.9, length.out = 20) + rnorm(20, 0, 0.15),
  X3 = seq(9.7, 11.0, length.out = 20) + rnorm(20, 0, 0.15),
  X4 = seq(9.6, 10.8, length.out = 20) + rnorm(20, 0, 0.15),
  X5 = seq(9.5, 10.7, length.out = 20) + rnorm(20, 0, 0.15)
)

sample3 <- data.frame(
  Subgroup = 1:20,
  X1 = rnorm(20, 10, 0.4),
  X2 = rnorm(20, 10, 0.4),
  X3 = rnorm(20, 10, 0.4),
  X4 = rnorm(20, 10, 0.4),
  X5 = rnorm(20, 10, 0.4)
)

sample_list <- list(
  "Sample 1: Out-of-control points" = sample1,
  "Sample 2: Trend pattern" = sample2,
  "Sample 3: Random variation" = sample3
)



# export datasets
write.csv(sample1, "sample1_out_of_control.csv", row.names = FALSE)
write.csv(sample2, "sample2_trend_pattern.csv", row.names = FALSE)
write.csv(sample3, "sample3_random_variation.csv", row.names = FALSE)
