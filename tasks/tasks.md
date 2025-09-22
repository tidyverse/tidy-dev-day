# Tidy dev day tasks

## Four months before

### Find a location

TODO: Lionel

-   80 people (60 + helpers).
    This is a pretty manageable size.
    We have also done 100 people, but 80 feels more intimate and fun.
    This gives a 1:3 helper ratio, which feels good.

-   Ideally there is a full-size fridge we can use for beverages

-   Avoid the classroom layout of long rectangle tables.
    Prefer circular tables if possible as they encourage group discussion (and attendees seem to really like it).

-   Talk with the social hour planner to ensure that the end time of the venue overlaps slightly with the start time of social hour (we don't want an hour long gap between them).

Follow up with the venue 6 weeks before and 2 weeks before to ensure they are still good to go

### Create event page

We have used [Luma](https://luma.com/mpr5c30q) in the past.

This usually has a catering survey.
Make this more constrained than a free text box for easier processing on the backend.

### Write call-to-signup blog post

Here is an example from [a previous year](https://github.com/tidyverse/tidyverse.org/pull/742).

### Commission token of appreciation

TODO: Hadley

### Find and contract a barista

-   \~80 people

-   9am-3pm (6 hours of service)

-   \$1,415 was the cost for Atlanta for 80 people.
    \$1627 was the cost for Seattle for 100 people.

-   They will need power

-   Ensure they can do lattes, cappuccinos, etc.
    If they can also do non-coffee drinks, then that is also ideal.
    Make sure they have alt milks available.

-   We always print out a custom menu with the Posit logo and tidyverse themed coffee drinks.
    You will need to work with the coffee vendor to make sure they can make these, or change them to something they can make.
    The coffee vendor typically has a standard 8.5x11 frame you can put the printed menu in.
    This is always a big hit, and people take pictures of it.
    Here is the [menu google doc](https://docs.google.com/document/d/19fMhf-eVJjQkEibS-MX9xbCIW4L3EAjBKm3cWnvuMrw/edit?usp=sharing).

-   It is nice to offer them lunch, they are typically very appreciative of this

In previous years we have used [Espresso Elegance](https://www.espressoelegance.com/) in Seattle and [Livewire](https://www.livewire.coffee/) in Atlanta.

### Plan post tidy-dev-day social event

Rent time at a bar after tidy-dev-day where we provide 1 drink ticket per person.

-   \~\$1000

    -   80 drink tickets at \$9 each plus taxes and fees (service charge, bartender fees, etc)

    -   Ideally we are *only* paying for drink tickets + taxes.
        Nothing else.
        This is possible!

-   \~60 people.
    Expect that 20-30% of people will drop out / not show / catch a flight out by the end of the day.
    Still order 80 drink tickets, some people can get 2 based on no-shows.
    Do not over-order drink tickets, there is generally no need for that.

-   Typically at a bar nearby

-   When talking to the event coordinator of these places, tell them you want a "public event", i.e. you do NOT want a private room.
    You just need a sectioned off part of their main room for your event.
    This should let you avoid a minimum fee (which can be \$3k+).

-   Ideally people can order food *on their own* if they want to, but we don't provide food as that is too expensive.

-   Talk with the event venue planner to ensure that the end time of the venue overlaps slightly with the start time of social hour (we don't want an hour long gap between them).

In Atlanta we used [Stats Brewpub](https://www.statsatl.com/).

### Order food

TODO: Hannah

-   \~\$2000

-   Sandwiches normally work well.
    Pizza has also worked very well (we had sandwiches as well).

-   Consider dietary restrictions.
    Vegetarian options are usually safest (covers vegetarian, no fish/seafood, no red meat, halal).

-   Set up lunch around 11:30am.
    Eat around 12:15pm.

-   Ensure a local Posit employee is used as the point of contact phone number in case there are day of issues.

-   It is worth checking in with the caterer 1 week before the event to make sure everything is good to go.

-   Consider getting enough for 2 baristas as well.
    They really appreciate it.

## One month before

### Set up a slack channel

`#tdd-yyyy` is generally the name, like `#tdd-2026`.

Send a message to everyone a few weeks before to remind people of their responsibilities.

### Schedule Git office hours

Git office hours should be no more than two weeks prior (ideally one week prior).

### Package upkeep

-   Freshly `devtools::document()`-ed with CRAN roxygen2

-   No dev versions in `Remotes` if possible

-   Latest `use_tidy_github_actions()`

### Plan issue labeling extravaganza

-   Check old issues labeled with `tidy-dev-day` to see if they are still relevant or not. [This search link](https://github.com/search?q=org%3Atidyverse+label%3A%22tidy-dev-day+%3Anerd_face%3A%22+state%3Aopen&type=issues) can help.

<!-- -->

-   We typically create an issue in tidy-dev-day documenting things that might be useful as issues for this tidy-dev-day, like [this one](https://github.com/tidyverse/tidy-dev-day/issues/79), and then we go through and label them with the `tidy-dev-day` tag.
    If your repo doesn't have this label yet, use `usethis::use_tidy_github_labels()`.

    -   Avoid long form documentation issues, i.e. avoid "make a new vignette" issues, as they take too much time for the reviewer day-of.

    -   Avoid "make a cheat sheet" or "tweak a cheat sheet" issues

## One week before

### Photography

-   George is the czar of photography

-   Order "no photography" labels of some kind, or have them just tell George ahead of time

### Labels

-   Convert issues labeled with `tidy-dev-day` to labels

-   Print out labels

-   Order post-its

-   Order scotch tape for post-its (post-it adhesive is never enough)

-   Order scissors for cutting the tape

-   Have some blank labels for day of ad hoc issues, plus sharpies (should have some from name tags)

### Name tags

-   Order 80 name tags

-   Order sharpies

### Gong

-   Ensure we have a plan to transfer the gong to tidy-dev-day, and then to UPS afterwards

-   Order scotch tape for the gong return box (share with tape required for labels)

### Snacks

Snacks for tidy-dev-day are usually bought by whoever has a car at posit::conf.
Enough for \~80 people.

-   Napkins

-   Plates

-   Cups

-   Utensils (only required if lunch requires them)

-   Chips

-   Bags of small chocolates / gummies (this is a good substitute for actual dessert)

-   Beverages (sparkling water, sodas)

If you do not have a car, or don't have a Costco nearby, then using DoorDash is a reasonable option.
We did this in Atlanta using Jenny's account and it worked well.
We even ordered a rolling cooler to put ice in.

### Polish and print ice breaker activity

Bingo works great.
Looking for `bingo.qmd` and `bingo.pdf`.

### Polish and print PR worksheet

The `worksheet/` folder

### Polish opening and closing slides

The `opening.key` and `closing.key` decks.

-   WiFi

-   Bathrooms

-   Date and time range of event

### Host Git office hours

TODO: Mine

## Day of

### Ice

Buy 4 bags of ice and transport to the venue.
Put in a cooler if we have one.
People can put ice in cups and pour a room temperature soda into it.
That's easier than trying to chill the sodas.

This is optional if the venue has a full-size fridge to put drinks in.

### Welcomers

At least one person out at the building entrance greeting folks and making sure they know where to go.
Ideally wearing a Posit shirt, or having a sign.

### Gong

Don't forget to pick up the gong from posit::conf.
You'll need the shipping return label, the box, and tape!

## Afterwards

### Blog post

Write a round up blog post describing how tidy-dev-day went.
