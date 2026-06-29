library(testthat)


test_that("calculstats retourne un data.frame", {
  res <- calculstats(c(1, 2, 3), 1)

  expect_s3_class(res, "data.frame")
})

test_that("calculstats retourne une colonne nommée 'valeur'", {
  res <- calculstats(c(1, 2, 3), 1)

  expect_named(res, "valeur")
})

test_that("calculstats effectue correctement le calcul", {
  res <- calculstats(c(1, 2, 3), 1)

  expect_equal(
    res$valeur,
    c(4, 6, 8)
  )
})

test_that("calculstats fonctionne avec un scalaire", {
  res <- calculstats(5, 2)

  expect_equal(
    res$valeur,
    14
  )
})

test_that("calculstats conserve la longueur du vecteur", {
  x <- 1:5

  res <- calculstats(x, 1)

  expect_equal(
    nrow(res),
    length(x)
  )
})

test_that("calculstats affiche un message pour un vecteur de plus de 10 éléments", {
  expect_output(
    calculstats(1:11, 1),
    "grand vecteur"
  )
})

test_that("calculstats fonctionne avec un vecteur vide", {
  res <- calculstats(numeric(0), 1)

  expect_equal(
    nrow(res),
    0
  )

  expect_equal(
    ncol(res),
    1
  )
})

test_that("calculstats gère les valeurs négatives", {
  res <- calculstats(c(-2, -1), 1)

  expect_equal(
    res$valeur,
    c(-2, 0)
  )
})

test_that("calculstats propage les valeurs NA", {
  res <- calculstats(c(1, NA), 1)

  expect_equal(
    res$valeur,
    c(4, NA)
  )
})
