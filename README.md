# Tidyverse developer day 2019

## Workflow

[Overview slides](overview.pdf)

### 1. Find an issue to work on

* [Issues tagged tidy-dev-day](https://github.com/search?q=is%3Aissue+is%3Aopen+label%3A%22tidy-dev-day+%3Anerd_face%3A%22)
* [Issues tagged help-wanted](https://github.com/search?q=is%3Aopen+is%3Aissue+label%3A%22help+wanted+%3Aheart%3A%22+&state=open&type=Issues)
* [Issues tagged reprex](https://github.com/search?q=is%3Aopen+label%3Areprex+&state=open&type=Issues)

You're encouraged to team up with a (new) friend and tackle something together!

### 2. Claim your issue

Add a comment to the issue thread, saying that you're working on it so no one duplicates work.

At useR! Toulouse, we plan to pilot a post-it note based system for **physically** claiming an issue. Stay tuned.

If you're work on an issue that doesn't already have the tidy-dev-day label, please comment requesting that @batpigandme add it. This makes it more visible to us and helps us track tidyverse developer day activities.

### 3. Make a PR

If you have never done a PR before, feel free to ask for help from any of the designated helpers. Our whole job today is to help people through these mechanics.

The usethis article [Pull request helpers](https://usethis.r-lib.org/articles/articles/pr-functions.html) shows how to work through a PR using the `pr_*()` functions. 

Some relevant parts of [Happy Git](https://happygitwithr.com) are helpful:

  * [Fork and clone](https://happygitwithr.com/fork-and-clone.html) then [Add the `upstream` remote](https://happygitwithr.com/upstream-changes.html#add-the-upstream-remote)
  * [Push](https://happygitwithr.com/push-rejected.html) and [pull](https://happygitwithr.com/pull-tricky.html) when there are commits on GitHub that you don't have
  
Sketch of R side (if working in a package)

  * **Fork** and clone (see above) and **create a new branch**.
  * `devtools::install_dev_deps()` to make sure you've got the necessary packages.
  * `devtools::check()` to get baseline, hopefully all is well.
  * Make your change.
    - Iterate quickly with `load_all()` and `test()`.
  * `devtools::document()`
  * `devtools::check()` to make sure all is still well.
  * Add a bullet to NEWS describing the fix or feature.
    - Be concise, link to issue, tag yourself.
    - Example: `use_circleci()` creates a `.circleci/config.yaml` config file
      for CircleCI (#703, @jdblischak)."
  * Push and make a PR.
    - Include text with [magic keywords](https://help.github.com/en/articles/closing-issues-using-keywords),
      like "Closes #123", in the description, to hyperlink & close your issue.

### 4. Celebrate!

## Tidyverse Dev Days

  * 2019 July 8, before [useR! Toulouse](https://user2019.r-project.org)
    - Held at [main useR! venue](https://user2019.r-project.org/travel/) =
      [Centre de Congrès Pierre Baudis](https://goo.gl/maps/3abG1CLHoE2gEDj19)
    - 9:00 AM to 5:00 PM
    - 
  * 2019 January 19th, following
    [rstudio::conf](https://www.rstudio.com/conference/) (inaugural event).

**Who?** Anyone who would like to get better at contributing to the tidyverse! Everyone is welcome regardless of whether you've never done a PR before, or if you've already made your 10th package. But please get a ticket (see below).

**What?** A day of learning and coding. We'll provide food; you'll bring your laptop and enthusiasm. The tidyverse team and other community helpers will be on hand to help out and answer your questions.

### Squad goals

The broad goal of this event is to nurture regular contributors to the tidyverse by having a day where we can work together on anything ranging from submitting your first pull request, to working on a package. The tidyverse team will be there, so we can help you hit the ground running and/or get over any stumbling blocks that you encounter. Don't have any ideas for something to work on? No problem! We'll be tagging issues in advance to make sure there's lots to do for any- and everyone, regardless of level of expertise.

### Tickets

Tickets are [~~on sale now!~~](https://www.eventbrite.com/e/tidyverse-developer-day-tickets-51757053741) __sold out__.

Tickets cost $10; we're charging a small fee because space is limited. All fees will be donated to *a to-be-determined worthy organization*.

## Code of Conduct

All attendees are bound by the [rstudio::conf Code of Conduct](CODE_OF_CONDUCT.md).

## Questions?

Have questions? Head over to the [tidyverse developer day](https://community.rstudio.com/t/tidyverse-developer-day/13146) 
thread on the RStudio community site!
