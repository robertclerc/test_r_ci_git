library(dplyr)
source("calculstats.R")


donnees <- c(1, 2, 3, 4, 5)

res <- calculstats(donnees, 1)

for (i in 1:length(donnees)) {
  print(donnees[i])
}

x <- NULL

print(x)
print(x)
if (is.null(x) == TRUE) {
  print("x est NULL")
}


df <- data.frame(a = c(1, 2, 3), b = c(4, 5, 6))

df2 <- df %>% mutate(c = a + b)

print(df2)

print(df2)
