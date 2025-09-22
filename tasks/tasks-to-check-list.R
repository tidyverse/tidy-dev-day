# Use this script to turn tasks in `tasks.md` into a bulleted check list
# you can put into a GitHub issue. You can then assign individuals to each
# item in the check list.

library(dplyr)
library(tidyr)
library(purrr)
library(parsermd)
library(vctrs)

tasks <- parse_qmd("tasks/tasks.md")
tasks <- as_tibble(tasks)

tasks <- tasks |>
  distinct(sec_h2, sec_h3) |>
  filter(!is.na(sec_h2) & !is.na(sec_h3)) |>
  chop(sec_h3)

headers <- as.list(paste0("# ", tasks$sec_h2))
bullets <- map(tasks$sec_h3, \(sec) paste0("  * [ ] ", sec))

content <- list_unchop(vec_interleave(headers, bullets))

cat(content, sep = "\n")

# Prints something like this:

# # Four months before
#   * [ ] Find a location
#   * [ ] Create event page
#   * [ ] Write call-to-signup blog post
#   * [ ] Commission token of appreciation
#   * [ ] Find and contract a barista
#   * [ ] Plan post tidy-dev-day social event
#   * [ ] Order food
# # One month before
#   * [ ] Set up a slack channel
#   * [ ] Schedule Git office hours
#   * [ ] Package upkeep
#   * [ ] Plan issue labeling extravaganza
# # One week before
#   * [ ] Photography
#   * [ ] Labels
#   * [ ] Name tags
#   * [ ] Gong
#   * [ ] Snacks
#   * [ ] Polish and print ice breaker activity
#   * [ ] Polish and print PR worksheet
#   * [ ] Polish opening and closing slides
#   * [ ] Host Git office hours
# # Day of
#   * [ ] Ice
#   * [ ] Welcomers
#   * [ ] Gong
# # Afterwards
#   * [ ] Blog post
