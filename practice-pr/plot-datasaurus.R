# load packages ---------------------------------------------------------------

library(datasauRus)
library(tidyverse)

# filter for star data --------------------------------------------------------

star <- datasaurus_dozen |>
  filter(dataset == "star")

# plot star data --------------------------------------------------------------

ggplot(star, aes(x = x, y = y)) +
  geom_point(color = "skyblue3", shape = "asterisk") +
  theme_void()
