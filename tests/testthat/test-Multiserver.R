data(bank)
testing <- with(bank, Multiserver(arrival_time, service_time, 4))
test_that("Multiserver works", {
  expect_snapshot(testing)
  expect_equal(dim(testing), c(100,4))
  expect_error(with(bank, Multiserver(arrival_time, service_time, -1)))
  expect_true(tibble::is_tibble(testing))
})
