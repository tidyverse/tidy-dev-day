# load packages ---------------------------------------------------------------

library(datasauRus)
library(tidyverse)

# filter for bullseye data ----------------------------------------------------

bullseye <- datasaurus_dozen |>
  filter(dataset == "bullseye")

# plot bullseye data ----------------------------------------------------------

ggplot(bullseye, aes(x = x, y = y)) +
  geom_point(color = "firebrick1", shape = "circle plus") +
  theme_void()
