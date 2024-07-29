# load packages ---------------------------------------------------------------

library(datasauRus)
library(tidyverse)

# filter for dino data --------------------------------------------------------

dino <- datasaurus_dozen |>
  filter(dataset == "dino")

# plot dino data --------------------------------------------------------------

ggplot(dino, aes(x = x, y = y)) +
  geom_point(color = "yellow4", shape = "T") +
  theme_void()

