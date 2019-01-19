# Tidyverse developer day 2019

[Overview slides](overview.pdf)

### Save the date

On the Saturday following [rstudio::conf](https://www.rstudio.com/conference/), we'll be holding our first ever **tidyverse developer day**. 

* Where: [The Sunset Room](https://www.sunsetroomaustin.com/), just a couple blocks away from where rstudio::conf is being held.

* When: January 19th, 9am-4pm.

* Who: Anyone who would like to get better at contributing to the tidyverse! Everyone is welcome regardless of whether you've never done a PR before, or if you've already made your 10th package. We'll also host some discussions about future development plans for tidymodels.

* What: A day of learning and coding. We'll provide breakfast, lunch, snacks, and coffee; you'll bring your laptop and enthusiasm. The tidyverse team will be on hand to help out and answer your questions.

### Squad goals

The broad goal of this event is to nurture regular contributors to the tidyverse by 
having a day where we can work together on anything ranging from submitting your 
first pull request, to working on a package. The tidyverse team will be there, 
so we can help you hit the ground running and/or get over any stumbling blocks that 
you encounter. Don't have any ideas for something to work on? No problem! We'll 
be tagging issues in advance to make sure there's lots to do for any- and 
everyone, regardless of level of expertise.

### On the day

See GitHub issues: 

* [Issues tagged tidy-dev-day](https://github.com/search?q=is%3Aissue+is%3Aopen+label%3A%22tidy-dev-day+%3Anerd_face%3A%22)
* [Issues tagged help-wanted](https://github.com/search?q=is%3Aopen+is%3Aissue+label%3A%22help+wanted+%3Aheart%3A%22+&state=open&type=Issues)
* [Issues tagged reprex](https://github.com/search?q=is%3Aopen+label%3Areprex+&state=open&type=Issues)

If you start working on an issue, please comment to "claim it" so that others don't work on it. But you're encouraged to team up!

If you're working on an issue that doesn't already have the tidy-dev-day label, please comment requesting that @batpigandme add it. This makes it more visibile to us and helps us track tidyverse developer day activities.

### Process tips re: making a pull request

Some relevant parts of [Happy Git](https://happygitwithr.com)

  * [Fork and clone](https://happygitwithr.com/fork-and-clone.html) then [Add the `upstream` remote](https://happygitwithr.com/upstream-changes.html#add-the-upstream-remote)
  * [Push](https://happygitwithr.com/push-rejected.html) and [pull](https://happygitwithr.com/pull-tricky.html) when there are commits on GitHub that you don't have
  
Sketch of R side (if working in a package)

  * Fork and clone (see above) and **create a new branch**.
  * `devtools::check()` to get baseline, hopefully all is well.
  * Make your change.
  * `devtools::document()`
  * `devtools::check()` to make sure all is well.
  * Push and make a PR, including text like "Closes #123".

### Tickets

Tickets are [~~on sale now!~~](https://www.eventbrite.com/e/tidyverse-developer-day-tickets-1617065687) __sold out__, but you can join the waitlist.

Tickets cost $10; we're charging a small fee because space is limited. All fees will be donated to [Code2College](https://code2college.org/about/), a local charity that "aims to dramatically increase the number of minority and low-income high school students who enter and excel in STEM undergraduate majors and careers".

### Code of Conduct

All attendees are bound by the [rstudio::conf Code of Conduct](CODE_OF_CONDUCT.md).

### Questions?

Have questions? Head over to the [tidyverse developer day](https://community.rstudio.com/t/tidyverse-developer-day/13146) 
thread on the RStudio community site!
