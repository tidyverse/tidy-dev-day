# Tidyverse developer day

## Workflow

[Overview slides](overview.pdf)

If you have never done a PR before, feel free to ask for help from any of the designated helpers! Our whole job today is to help YOU. 

### 1. Find and claim an issue

Browse the post its, looking for something of interest. If you've never done a PR before, we recommend that you start with a documentation issue since there are slightly fewer moving parts. You're encouraged to team up with a (new) friend and tackle something together!

Once you've picked an post-it, open up the issue and read the details in full. At this point, you might discover the issue is outside your wheelhouse, in which case you can return the post-it to the wall and try agin.

### 2. Get the source locally

* Set up your GitHub personal access token with [?browse_github_pat](https://usethis.r-lib.org/reference/browse_github_token.html).

* **Fork** and clone the repo `usethis::create_from_github("{username}/{repo}")` (removing the curly braces, e.g `usethis::create_from_github("tidyverse/ggplot2")`)

* `devtools::install_dev_deps()` to make sure you've got the necessary packages.

* `devtools::check()` to get baseline, hopefully all is well. If it isn't, 
  seek help.

### 3. Make the change

* Create a new branch for your changes to live with
  `usethis::pr_init("very-brief-description")`

* Make your change. 
  
  * If you're writing code, add a test or two. 
    Iterate quickly with `devtools::load_all()` and `devtools::test()`.
  
  * If you're writing documentation, use `devtools::document()` to 
    update the docs.

* `devtools::check()` to make sure all is still well.

* If the feature is user facing (i.e. it adds a new feature or fixes a bug), add a bullet to NEWS.
  - Be concise, link to issue, tag yourself.
  - Example: "`use_circleci()` creates a `.circleci/config.yaml` config file
    for CircleCI (#703, @jdblischak)."

### 4. Submit your PR

Push and make a PR with `usethis::pr_push()`.
  
- Make the title descriptive:
  - Not good: "Working on issue 45"
  - Much better: "Use stricter regexes for package and file name checks"

- In the description (not the title), use the [magic fixes keyword](https://help.github.com/en/articles/closing-issues-using-keywords),
  e.g. "Fixes #123", to link & close your issue.

- Example with descriptive title and description containing magic keywords:
  [r-lib/usethis/#742](https://github.com/r-lib/usethis/pull/742)  

### 3. Wait for review

Add your post-it to the review wall. Then one of the tidyverse team will take it, read through your PR and offer suggestions for how to improve it. If you want to work on something else while you wait, use `pr_pause()` to pause your pull request while you work on other stuff.

### 4. Ring the gong

Once your PR is merged, it's your job to move it from "reviewed" to "celebrated" by moving the post-it and ringing the gong!

## Tidyverse Dev Days

* [2020-01-31](https://www.tidyverse.org/blog/2019/11/tidyverse-dev-day-2020/),
  following [rstudio::conf(2020)](https://rstd.io/conf)
* [2019-07-08](https://www.tidyverse.org/blog/2019/04/tidyverse-dev-day-at-user-2019/),
  before [useR! Toulouse](https://user2019.r-project.org)
* [2019-01-19](https://www.tidyverse.org/blog/2018/11/tidyverse-developer-day-2019/), 
  following [rstudio::conf](https://www.rstudio.com/conference/).

**Who?** Anyone who would like to get better at contributing to the tidyverse! Everyone is welcome regardless of whether you've never done a PR before, or if you've already made your 10th package. But you do need a ticket; to provide a fulfilling experience for all attendees we need to carefully manage the ratio of attendees to helpers.

**What?** A day of learning and coding. We'll provide food; you'll bring your laptop and enthusiasm. The tidyverse team and other community helpers will be on hand to help out and answer your questions.

You can find out more about how the day feels by reading write ups from previous participants: [Ryo Nakagawara](https://ryo-n7.github.io/2019-01-25-tidyversedevday-rstudioconf-reflections/), [Julia Silge](https://juliasilge.com/blog/rstudio-conf-2019/#bonus-round), [Angela Li](https://docs.google.com/presentation/d/1iodn7rsklI1wryld-NN_Dslr7tHM0xyoMx2C3RRFTJc/edit#slide=id.g4f3d8da43d_0_4) 

### Squad goals

The broad goal of this event is to nurture regular contributors to the tidyverse by having a day where we can work together on anything ranging from submitting your first pull request, to working on a package. The tidyverse team will be there, so we can help you hit the ground running and/or get over any stumbling blocks that you encounter. Don't have any ideas for something to work on? No problem! We'll be tagging issues in advance to make sure there's lots to do for any- and everyone, regardless of level of expertise.

## Code of Conduct

All attendees are bound by the [rstudio::conf Code of Conduct](CODE_OF_CONDUCT.md). If you have problems please contact Hadley or Jenny in person, via email <hadley@rstudio.com>/<jenny@rstudio.com>, or call/text Hadley: 515-450-8171.

## Questions?

Feel free to open an [issue](https://github.com/tidyverse/dev-day-2019/issues) here.
