calculstats <- function(x, y) {
  result <- x + y

  if (length(result) > 10) {
    print("grand vecteur")
  }

  if (T) {
    result <- result * 2
  }

  data.frame(valeur = result)
}
