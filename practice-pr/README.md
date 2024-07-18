# Practice making a PR

We strongly recommend practicing making a pull request (PR) prior to TDD, especially if you haven't made a PR before.
We have provided three options, you only need to pick one!
The steps outlined for each option utilize [**usethis** PR helpers](https://usethis.r-lib.org/articles/pr-functions.html), but you're welcomed to use an alternate approach as well.

## Option 1: Add a dad joke to `dad-jokes.yaml`

Goal: Practice making a PR by adding modifying a single text file.

Steps:

1. Fork and clone this repo with `usethis::create_from_github("tidyverse/tidy-dev-day")`.
2. Start a PR with `usethis::pr_init()` with a new branch name, e.g. `usethis::pr_init("new-dad-joke")`.
3. Open `practice-pr/dad-jokes.yaml`.
4. Add a new dad joke that's in question/answer format by adding a new entry to the document, following the format of the existing two entries, e.g.,

```yaml
- question: What’s green and pear-shaped?
  answer: A pear.
```

5. Commit your changes with a short but informative commit message.
6. Push your changes with `usethis::pr_push()`, which will open a web browser where you can submit your PR.
7. Follow the steps in the GitHub web interface to finalize and submit your PR.
8. [Once your PR is merged] Finish up your PR with `usethis::pr_finish()`.

Need inspiration? Get a quote from <https://bookdown.org/pkaldunn/DUH/QuestionAnswer.html> or using the [**dadjokeapi**](https://cran.r-project.org/web/packages/dadjokeapi/index.html) package.

## Option 2: Add a quote to `quotes.qmd`

Goal: Practice making a PR by updating multiple files.

Steps:

1. Fork and clone this repo with `usethis::create_from_github("tidyverse/tidy-dev-day")`.
2. Start a PR with `usethis::pr_init()` with a new branch name, e.g. `usethis::pr_init("new-quote")`.
3. Open `practice-pr/quotes.qmd`.
4. Add a new quote by adding a new entry to the document, following the format of the existing two entries, e.g.,

```yaml
> "There are only two hard things in Computer Science: cache invalidation and naming things."
> 
> Phil Karlton
```

5. Render the document to update `quotes.md`.
6. Commit your changes with a short but informative commit message. Make sure that you commit `quotes.qmd` as well as its output `quotes.md`.
7. Push your changes with `usethis::pr_push()`, which will open a web browser where you can submit your PR.
8. Follow the steps in the GitHub web interface to finalize and submit your PR.
9. [Once your PR is merged] Finish up your PR with `usethis::pr_finish()`.

Need inspiration? Get a quote from <https://www.brainyquote.com/topics/motivational-quotes> or using the [**statquotes**](https://cran.r-project.org/web/packages/statquotes/index.html) package.

## Option 3: Modify the plot in `plot-datasaurus.R`

Goal: Practice making a PR by modifying an R script, including code and associated comments.

Steps:

1. Fork and clone this repo with `usethis::create_from_github("tidyverse/tidy-dev-day")`.
2. Start a PR with `usethis::pr_init()` with a new branch name, e.g. `usethis::pr_init("new-plot")`.
3. Open `practice-pr/plot-datasaurus.R`.
4. Modify the plotting code by
   - filtering for a different `dataset` from the `datasaurus_dozen` data frame and updating the associated code comment and name of the resulting data frame, and 
   - plotting the newly created data frame with a new color and new shape, e.g.

```r
# filter for bullseye data ----------------------------------------------------

bullseye <- datasaurus_dozen |>
  filter(dataset == "bullseye")

# plot bullseye data ----------------------------------------------------------

ggplot(bullseye, aes(x = x, y = y)) +
  geom_point(color = "firebrick1", shape = "circle plus") +
  theme_void()
```

5. Run your code to make sure it creates a new plot with no errors.
6. Commit your changes with a short but informative commit message.
7. Push your changes with `usethis::pr_push()`, which will open a web browser where you can submit your PR.
8. Follow the steps in the GitHub web interface to finalize and submit your PR.
9. [Once your PR is merged] Finish up your PR with `usethis::pr_finish()`.

Need inspiration? Pick a new color from <https://stat.columbia.edu/~tzheng/files/Rcolor.pdf> and a new shape from <https://ggplot2.tidyverse.org/articles/ggplot2-specs.html#sec:shape-spec>.