library(dplyr)
library(tidyverse)

library(tibble)
as_tibble(iris)
tibble(x = 1:5, y = 1, z = x ^ 2 + y)
tribble(
  ~x, ~y,  ~z,
  "a", 2,  3.6,
  "b", 1,  8.5
)
vignette("tibble")
tibble(
  a = lubridate::now() + runif(1e3) * 86400,
  b = lubridate::today() + runif(1e3) * 30,
  c = 1:1e3,
  d = runif(1e3),
  e = sample(letters, 1e3, replace = TRUE)
)
df <- tibble(
  x = runif(5),
  y = rnorm(5)
)
df$x
df[["x"]]
df[[1]]
df %>% .$x
df %>% .[["x"]]
class(as.data.frame(df))
