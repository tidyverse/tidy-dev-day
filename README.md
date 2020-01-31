# Tidyverse developer day

## Workflow

[Overview slides](overview.pdf)

### 1. Find and claim an issue

Browse the post its, looking for something of interest. If you've never done a PR before, we recommend that you start with a documentation issue since there are slightly fewer moving parts. You're encouraged to team up with a (new) friend and tackle something together!

Once you've picked an post-it, open up the issue and read the details in full. At this point, you might discover the issue is outside your wheelhouse, in which case you can return the post-it to the wall and try agin.

### 2. Make a PR

If you have never done a PR before, feel free to ask for help from any of the designated helpers. Our whole job today is to help people through these mechanics.

[Happy Git](https://happygitwithr.com) describes some relevant workflows, such as:

  * [Fork and clone](https://happygitwithr.com/fork-and-clone.html) then [Add the `upstream` remote](https://happygitwithr.com/upstream-changes.html#add-the-upstream-remote)
  * [Push](https://happygitwithr.com/push-rejected.html) and [pull](https://happygitwithr.com/pull-tricky.html) when there are commits on GitHub that you don't have
  
The usethis article [Pull request helpers](https://usethis.r-lib.org/articles/articles/pr-functions.html) shows how to work through a PR using the `pr_*()` functions. 

Sketch of R side (if working in a package)

  * **Fork** and clone (see above) and **create a new non-`master` branch**.
    - `usethis::create_from_github()` + `pr_init()` are great for this! Make sure your Github personal access token is configured before you use `create_from_github()`, otherwise you will just clone the repo instead of forking and cloning it. See the docs for `create_from_github()` (or the above resources) for instructions! 
  * `devtools::install_dev_deps()` to make sure you've got the necessary packages.
  * `devtools::check()` to get baseline, hopefully all is well.
  * Make your change. Add a test or two, if relevant.
    - Iterate quickly with `load_all()` and `test()`.
  * `devtools::document()`
  * `devtools::check()` to make sure all is still well.
  * If the feature is user facing (i.e. it adds a new feature or fixes a bug), add a bullet to NEWS.
    - Be concise, link to issue, tag yourself.
    - Example: "`use_circleci()` creates a `.circleci/config.yaml` config file
      for CircleCI (#703, @jdblischak)."
  * Push and make a PR.
    - `usethis::pr_push()` is great for this!
    - Make the title descriptive:
      - Not good: "Working on issue 45"
      - Much better: "Use stricter regexes for package and file name checks"
    - In the description (not the title), use the [magic fixes keyword](https://help.github.com/en/articles/closing-issues-using-keywords),
      e.g. "Fixes #123", to link & close your issue.
    - Example with descriptive title and description containing magic keywords:
      [r-lib/usethis/#742](https://github.com/r-lib/usethis/pull/742)  

### 3. Wait for review

Add your post-it to the review wall. Then one of the tidyverse team will take it, read through your PR and offer suggestions for how to improve it. 

### 4. Ring the gong

Once your PR is merged, it's your job to move it from "reviewed" to "celebrated" by moving the post-it and ringing the gong!

## Tidyverse Dev Days

* [2020-01-31](https://www.tidyverse.org/blog/2019/11/tidyverse-dev-day-2020/),
  following [rstudio::conf(2020)](https://rstd.io/conf)
* [2019-07-08](https://www.tidyverse.org/blog/2019/04/tidyverse-dev-day-at-user-2019/),
  before [useR! Toulouse](https://user2019.r-project.org)
* [2019-01-19](https://www.tidyverse.org/blog/2018/11/tidyverse-developer-day-2019/), 
  following [rstudio::conf](https://www.rstudio.com/conference/).

**Who?** Anyone who would like to get better at contributing to the tidyverse! Everyone is welcome regardless of whether you've never done a PR before, or if you've already made your 10th package. But please get a ticket (see below).

**What?** A day of learning and coding. We'll provide food; you'll bring your laptop and enthusiasm. The tidyverse team and other community helpers will be on hand to help out and answer your questions.

You can find out more about how the day feels by reading write ups from previous participants: [Ryo Nakagawara](https://ryo-n7.github.io/2019-01-25-tidyversedevday-rstudioconf-reflections/), [Julia Silge](https://juliasilge.com/blog/rstudio-conf-2019/#bonus-round), [Angela Li](https://docs.google.com/presentation/d/1iodn7rsklI1wryld-NN_Dslr7tHM0xyoMx2C3RRFTJc/edit#slide=id.g4f3d8da43d_0_4) 

### Squad goals

The broad goal of this event is to nurture regular contributors to the tidyverse by having a day where we can work together on anything ranging from submitting your first pull request, to working on a package. The tidyverse team will be there, so we can help you hit the ground running and/or get over any stumbling blocks that you encounter. Don't have any ideas for something to work on? No problem! We'll be tagging issues in advance to make sure there's lots to do for any- and everyone, regardless of level of expertise.

## Code of Conduct

All attendees are bound by the [rstudio::conf Code of Conduct](CODE_OF_CONDUCT.md).

## Questions?

Feel free to open an [issue](https://github.com/tidyverse/dev-day-2019/issues) here.
