# load packages ---------------------------------------------------------------

library(datasauRus)
library(tidyverse)

# filter for dino data ----------------------------------------------------

bullseye <- datasaurus_dozen |>
  filter(dataset == "dino")

# plot dino data ----------------------------------------------------------

ggplot(bullseye, aes(x = x, y = y)) +
  geom_point(color = "darkgreen", shape = "circle plus") +
  theme_void()
