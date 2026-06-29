library(dplyr)

calculStat <- function(x, y) {
  result <- x + y

  if (length(result) > 10) {
    print("grand vecteur")
  }

  if (T) {
    result <- result * 2
  }

  data.frame(valeur = result)
}

donnees <- c(1, 2, 3, 4, 5)

res <- calculStat(donnees, 1)

for (i in 1:length(donnees)) {
  
  
  print(donnees[i])}

x <- NULL

print(x)

if (is.null(x) == TRUE) {
  print("x est NULL")
}





df <- data.frame(a = c(1, 2, 3), b = c(4, 5, 6))

df2 <- df %>% mutate(c = a + b)

print(df2)

print(df2)
