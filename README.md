# Tidyverse developer day

**What?** A day of learning and coding to nurture regular contributors to the tidyverse. We'll provide food; you'll bring your laptop and enthusiasm. The tidyverse team and other community helpers will be on hand to help you hit the ground running and/or get over any stumbling blocks that you encounter. Don't have any ideas for something to work on? No problems! We'll be tagging issues in advance to make sure there's lots to do for any- and everyone, regardless of level of expertise.

**Who?** Anyone who would like to get better at contributing to the tidyverse! Everyone is welcome regardless of whether you've never done a PR before, or if you've already made your 10th package. But you do need a ticket; to provide a fulfilling experience for all attendees we need to carefully manage the ratio of attendees to helpers.

**How much?** We charge a nominal fee of $10 because we've found that this level of commitment discourages people from taking tickets that they don't use. If the cost would prevent you from attending, please email jenny@posit.co to request a free registration.

## Past Dev Days

* [2020-01-31](https://www.tidyverse.org/blog/2019/11/tidyverse-dev-day-2020/),
  following [rstudio::conf(2020)](https://rstd.io/conf)
* [2019-07-08](https://www.tidyverse.org/blog/2019/04/tidyverse-dev-day-at-user-2019/),
  before [useR! Toulouse](https://user2019.r-project.org)
* [2019-01-19](https://www.tidyverse.org/blog/2018/11/tidyverse-developer-day-2019/), 
  following [rstudio::conf](https://www.rstudio.com/conference/).

You can find out more about how the day feels by reading write ups from previous participants: [Ryo Nakagawara](https://ryo-n7.github.io/2019-01-25-tidyversedevday-rstudioconf-reflections/), [Julia Silge](https://juliasilge.com/blog/rstudio-conf-2019/#bonus-round), [Angela Li](https://docs.google.com/presentation/d/1iodn7rsklI1wryld-NN_Dslr7tHM0xyoMx2C3RRFTJc/edit#slide=id.g4f3d8da43d_0_4) 

## Workflow

[Introduction slides](introduction.pdf)

If you have never done a PR before, feel free to ask for help from any of the designated helpers! Our whole job today is to help YOU. 

### 0. Get ready

1. `install.packages("pak")`

1. `pak::pak("devtools")`

1. [Set up your GitHub personal access token](https://usethis.r-lib.org/articles/git-credentials.html#get-a-personal-access-token-pat).

1. Call `usethis::git_sitrep()` and check that:
    * Your name and email address appears in "Git config (global)"
    * Your github user name is found under "Github"

### 1. Find and claim an issue

Browse the post its, looking for something of interest. If you've never done a PR before, we recommend that you start with a documentation issue since there are slightly fewer moving parts. We also encouraged to team up with a (new) friend and tackle something together!

Once you've picked a post-it, open the issue and read the details in full. At this point, you might discover the issue is outside your wheelhouse; if so, no problems, just return the the post-it to the wall and try again.

### 2. Get the source locally

* **Fork** and clone the repo `usethis::create_from_github("{username}/{repo}")` (e.g `usethis::create_from_github("tidyverse/ggplot2")`)

* `pak::pak()` to make sure you've got the necessary packages.

* If you're working a documentation issue, run `devtools::document()` to
  make sure you have everything necessary to update the docs before you 
  make any changes.
  
* If you're working on an bug or feature, run `devtools::check()` to get 
  a baseline. If `R CMD check` fails, something is probably off with the setup
  of your machine and you should seek help.

### 3. Make the change

* Create a new branch for your changes to live with
  `usethis::pr_init("very-brief-description")`

* Make your change. 
  
  * If you're writing code, add a test or two. 
    Iterate quickly with `devtools::load_all()` and `devtools::test()`.
  
  * If you're writing documentation, use `devtools::document()` to 
    update the docs.

* `devtools::check()` to make sure all is still well.

* Commit the change with your git client.

* If the feature is user facing (i.e. it adds a new feature or fixes a bug), add a bullet to NEWS. Be concise, link to the issue, and tag yourself.

  ```
  * `use_circleci()` creates a `.circleci/config.yaml` config file
     for CircleCI (#703, @jdblischak).
  ```

### 4. Submit your PR

Push and make a PR with `usethis::pr_push()`.
  
- Make the title descriptive:
  - Not good: "Working on issue 45"
  - Much better: "Use stricter regexes for package and file name checks"

- In the description (not the title), use the [magic fixes keyword](https://help.github.com/en/articles/closing-issues-using-keywords),
  e.g. "Fixes #123", to link & close your issue.

- Example with descriptive title and description containing magic keywords:
  [r-lib/usethis/#742](https://github.com/r-lib/usethis/pull/742)  

Ring the gong to celebrate your successful submission!

### 5. Wait for review

Add your post-it to the review wall. Then one of the tidyverse team will take it, read through your PR and offer suggestions for how to improve it. If you want to work on something else while you wait, use `pr_pause()` to pause your pull request while you work on other stuff.

It's possible the reviewer might make changes directly to your review - if that happens you can use `pr_pull()` to get their code back on to your computer.

## Code of Conduct

All attendees are bound by the [Code of Conduct](CODE_OF_CONDUCT.md). If you have problems please contact Hadley or Jenny in person, via email <hadley@posit.co>/<jenny@posit.co>, or call/text Hadley: 515-450-8171.

## Questions?

Feel free to open an [issue](https://github.com/tidyverse/dev-day/issues) here.
