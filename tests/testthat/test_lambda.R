library(testthat)


test_that("calculStat retourne un data.frame", {
  res <- calculStat(c(1, 2, 3), 1)

  expect_s3_class(res, "data.frame")
})

test_that("calculStat retourne une colonne nommée 'valeur'", {
  res <- calculStat(c(1, 2, 3), 1)

  expect_named(res, "valeur")
})

test_that("calculStat effectue correctement le calcul", {
  res <- calculStat(c(1, 2, 3), 1)

  expect_equal(
    res$valeur,
    c(4, 6, 8)
  )
})

test_that("calculStat fonctionne avec un scalaire", {
  res <- calculStat(5, 2)

  expect_equal(
    res$valeur,
    14
  )
})

test_that("calculStat conserve la longueur du vecteur", {
  x <- 1:5

  res <- calculStat(x, 1)

  expect_equal(
    nrow(res),
    length(x)
  )
})

test_that("calculStat affiche un message pour un vecteur de plus de 10 éléments", {
  expect_output(
    calculStat(1:11, 1),
    "grand vecteur"
  )
})

test_that("calculStat fonctionne avec un vecteur vide", {
  res <- calculStat(numeric(0), 1)

  expect_equal(
    nrow(res),
    0
  )

  expect_equal(
    ncol(res),
    1
  )
})

test_that("calculStat gère les valeurs négatives", {
  res <- calculStat(c(-2, -1), 1)

  expect_equal(
    res$valeur,
    c(-2, 0)
  )
})

test_that("calculStat propage les valeurs NA", {
  res <- calculStat(c(1, NA), 1)

  expect_equal(
    res$valeur,
    c(4, NA)
  )
})
