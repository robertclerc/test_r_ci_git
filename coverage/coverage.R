library(covr)

cov <- file_coverage(
  source_files = c(
    here::here("R", "calculstats.R")
  ),
  test_files = c(
    here::here("tests", "testthat", "test_lambda.R")
  )
)

# cov
print(cov)
