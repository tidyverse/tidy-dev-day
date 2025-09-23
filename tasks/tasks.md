# Tidy dev day tasks

## Four months before

### Find a location

-   Event is 9am-4pm; need space 8am-5pm.

-   80 people (60 + helpers).
    This is a pretty manageable size.
    We have also done 100 people, but 80 feels more intimate and fun.
    This gives a 1:3 helper ratio, which feels good.

-   Avoid the classroom layout of long rectangle tables.
    Prefer banquet setups if possible as they encourage group discussion (and attendees seem to really like it).

-   Need location for barrista (including power).

-   Will self-cater lunch + snacks.
    Ideally there is a full-size fridge we can use for beverages

-   Need multiplugs + WiFi + ability to show presentation.

-   Universities often have multiple event venues that might be appropriate.
    It might be helpful to find a local R user that works there to help us find a good place.

-   There are also non-academic events spaces (wedding, business, etc) that are likely more expensive but can be good choices, especially if they are more comfortable.
    Many of them will not allow self-catering.

-   Expected cost:

    -   In 2025 we started out with an acamedic venue for $2k: 80 banquet seats and 50 others in 2 adjacent rooms (we were planning for 100 + a Shiny event), with a catering space (https://cas.gsu.edu/eventcenter/).
        After they cancelled, we found another non-academic venue for $4k: 80 banquet seats with a lounge area and a catering space (https://www.terminus330.com).

-   The contract will need to be reviewed by legal and signed (e.g. by the CFO). To that end, go to your Okta dashboard, click on the Posit Help Center tile, and request a Legal Review.

-   To pay the invoice, send it to ap@posit.co (accounts payable email address).

-   Follow up with the venue 6 weeks before and 2 weeks before to ensure they are still good to go (we've had one venue cancel on us one week before the event).

### Create event page

-   Can clone from previous [Luma](https://luma.com/mpr5c30q).
-   20 helpers (free with code to register), 30 URM, 30 GA.
-   Need to more clearly describe URM + GA options on Luma.
-   Food options: vegan, vegetarian, gluten-free.

### Write call-to-signup blog post

Here is an example from [a previous year](https://github.com/tidyverse/tidyverse.org/pull/742).

### Commission token of appreciation

-   Ask Greg to update PDF with new date + location.
-   Order 80 coins from WizardPins.
-   "Custom soft enamel pins", 1.74” x 2”.

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

-   Pizza as the first option

    -   \~\$600

    -   Typically higher quality than sandwiches, try to pick up from a local restaurant

    -   Cheese pizza meets a vegetarian restriction

    -   Offer \$10 for anyone with additional requirements to secure their own lunch on their own

-   Sandwiches as a backup option if pizza doesn't work

    -   \~\$2000, so much more expensive than pizza, and generally less tasty

    -   Need vegetarian options if you go this route

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
-   We typically create an issue in tidy-dev-day documenting things that might be useful as issues for this tidy-dev-day, like [this one](https://github.com/tidyverse/tidy-dev-day/issues/79), and then we go through and label them with the `tidy-dev-day` tag. If your repo doesn't have this label yet, use `usethis::use_tidy_github_labels()`.
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

-   Order/bring sharpies

### Gong

-   Ensure we have a plan to transfer the gong to tidy-dev-day, and then to UPS afterwards

-   Order scotch tape for the gong return box (share with tape required for labels)

### Snacks / Drinks

Snacks for tidy-dev-day are usually bought by whoever has a car at posit::conf.
Enough for \~80 people.

Depending on catering, may also need napkins, plates, and utensils.

-   Chips (pringles, cheez-its, etc)

-   Bags of small chocolates / gummies (this is a good substitute for actual dessert)

-   Beverages (sparkling water, sodas)

Coordinate with a local Posit employee to find a large cooler for the beverages (ideally more than one).
This is generally better than trying to buy plastic cups.
Ice is bought day of.

If you do not have a car, or don't have a Costco nearby, then using DoorDash is a reasonable option.
We did this in Atlanta using Jenny's account and it worked well.

### Polish and print ice breaker activity

Bingo works great.
Looking for `bingo.qmd` and `bingo.pdf` in `bingo/`.

### Polish and print PR worksheet

The `worksheet/` folder

### Polish opening and closing slides

The `opening.key` and `closing.key` decks in `slides/`.

-   WiFi

-   Bathrooms

-   Date and time range of event

### Host Git office hours

-   Schedule Git office hours to be one week (no more than two weeks) prior to TDD

-   Announce them one month prior and then again a week before the office hours to participants who have signed up

-   One hour is sufficient

-   11am ET is a generally not terrible time for an international audience

-   During office hours:

    -   2-3 min summary of how the day will go is a good way to start the hour.
    -   Have everyone who shows up to office hours run `git_sitrep()` and check they have their setup correct, help them get there if not.
    -   If people have questions, answer those. Even better if they're willing to share their screen and work through it.
    -   If not, demo doing a PR using the instructions in the practice-pr exercise and share screen -- this usually brings up questions.

## Day of

### Ice

Buy 4 bags of ice and transport to the venue.
Put in a cooler donated from a local Posit employee and chill drinks.

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
