context("vis_miss")

test_that("Valid ggplot object is produed",{
  monitors <- c("ASN00003003", "ASM00094299")
  weather_df <- meteo_pull_monitors(monitors)
  out <- vis_miss(weather_df)

  expect_is(out, "ggplot")
})
