# Using AI well at Tidy Dev Day

TL;DR: AI tools are welcome at Tidy Dev Day — use them to build understanding, not to skip it. Participants should not use AI solely to produce a fix and then submit it. AI can help participants understand the issue, build a reprex, explore the codebase, propose approaches, and make sense of the resulting fix. But it should not replace the work of understanding the problem, choosing and validating an approach, and responding to review.

Here’s our guidance for getting the most out of the day.

Since our last Tidy Dev Day, one thing has changed dramatically: many participants will arrive with AI tools that can help them navigate an unfamiliar codebase, write a test, or suggest a possible fix. Before the day arrives, we want to be clear about how we hope participants will use them.

## The point of the day is not just the pull request

If our goal were simply to close issues, we wouldn’t need a venue, a barista, or a gong. Tidy Dev Day is about more than the diff:

* **Demystifying contribution.** For many people, the barrier to contributing to open source isn’t ability—it’s the sense that contribution is something other people do. The day lets participants experience the full arc: claim a sticky note, work through the problem, submit a PR, get a review from a tidyverse developer, and smash the gong.

* **Curated, accessible issues.** We select issues that are tractable in a day and genuinely useful, so beginners and veterans alike can find something at the right level of challenge. That challenge is a feature, not an inefficiency to optimize away.

* **Learning and community.** Participants don’t need extensive development experience to come—just a GitHub account and basic git familiarity. Much of the value comes from working alongside other people: pairing with a stranger, asking a maintainer, “Why is it done this way?”, and cheering when someone else’s PR is merged.

* **Building a community of maintainers.** The tidyverse’s long-term health depends on people who understand its code, not just those who can generate plausible fixes.

These goals are about what happens in participants’ heads and between people, not just the diff. A fix its author can’t explain may close an issue, but it does not build that person’s ability, confidence, or connection to the project. Nor does it make the day easier for reviewers: every PR is reviewed by a real tidyverse developer, in the room, on the day. A pile of plausible-looking fixes that their authors cannot discuss moves the thinking onto a handful of reviewers.

## Where AI can help

AI can be a tremendous accelerator when participants use it to *build* understanding rather than substitute for it. We encourage them to use it that way throughout the day:

* **Understanding the issue.** Participants can paste in the issue thread and ask for a plain-language explanation. What is the reported behavior? What is expected? What R concepts are needed to understand the problem?

* **Making a reprex.** A minimal reproducible example is a small, self-contained demonstration of a problem that others can run and inspect. AI can help participants strip a problem down to its essential pieces. Confirming that the reprex actually demonstrates the bug is also a quick check of their understanding.

* **Getting oriented in an unfamiliar codebase.** “Where is `abort()` called from in this package?” “Walk me through what this S3 method does.” Questions like these can take a while to answer by grepping through an unfamiliar codebase; now they can take a minute—and leave participants knowing more.

* **Proposing a fix.** Participants can ask for candidate approaches—plural—and then compare them: What are the trade-offs? Does one fit the package’s conventions better? Which approach could they defend in review?

* **Understanding and validating the fix.** Whether the code came from a participant, their pair, or a model, they should ask questions until they understand what it changes and why it solves the problem. Run it. Try to break it. Read the surrounding code. If the participant cannot explain the change, they are not done yet.

* **Tests and other scaffolding.** AI can help participants draft test cases, check roxygen2 documentation, tighten a PR description, or untangle a git mishap. But they should understand what each test establishes, why it should fail before the fix, and why it should pass afterward.

A good rule of thumb: *participants should be able to explain the problem, the approach they chose, the tests, and every material change in their PR to their reviewer.* If they cannot, they should pause and use AI—or a person in the room—to help them understand. That understanding is the part they came for.
