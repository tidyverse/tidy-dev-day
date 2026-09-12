# Using AI well at Tidy Dev Day

> TL;DR: AI tools are welcome at Tidy Dev Day — use them to build understanding, not to skip it. Don't use AI solely to produce a fix and then submit it. AI can help you understand the issue, build a reprex, explore the codebase, propose approaches, and make sense of the resulting fix. But it should not replace the work of understanding the problem, choosing and validating an approach, and responding to review.

Since our last Tidy Dev Day, one thing has changed dramatically: many of you will arrive with AI tools that can help you navigate an unfamiliar codebase, write a test, or suggest a possible fix. Before the day arrives, we want to be clear about how we hope you’ll use them.

Here’s our guidance for getting the most out of the day.

## The point of the day is not just the pull request

If our goal were simply to close issues, we wouldn’t need a venue, a barista, or a gong. Tidy Dev Day is about more than the diff:

* **Demystifying contribution.** For many people, the barrier to contributing to open source isn’t ability—it’s the sense that contribution is something other people do. The day lets you experience the full arc: claim a sticky note, work through the problem, submit a PR, get a review from a tidyverse developer, and smash the gong.

* **Curated, accessible issues.** We select issues that are tractable in a day and genuinely useful, so beginners and veterans alike can find something at the right level of challenge. That challenge is a feature, not an inefficiency to optimize away, even though an agent is extremely likely to be successful with some of these issues.

* **Learning and community.** You don’t need extensive development experience to come—just a GitHub account and basic git familiarity. Much of the value comes from working alongside other people: pairing with a stranger, asking a maintainer, “Why is it done this way?”, and cheering when someone else’s PR is merged.

* **Building a community of maintainers.** The tidyverse’s long-term health depends on people who understand its code, not just those who can generate plausible fixes.

These goals are about what happens in your head and between people, not just the diff. It has always been the case that these issues could have been closed much fast, on average, by developers on the tidyverse team. However this is only true in the short-term. In the long term, the investment in building the community is invaluable. A fix you can’t explain may close an issue, but it does not build your ability, confidence, or connection to the project. Nor does it make the day easier for reviewers: every PR is reviewed by a real tidyverse developer, in the room, on the day. A pile of plausible-looking fixes that their authors cannot discuss moves the thinking onto a handful of reviewers.

## Where AI can help

AI can be a tremendous accelerator when you use it to *build* understanding rather than substitute for it. We encourage you to use it that way throughout the day:

* **Understanding the issue.** Paste in the issue thread and ask for a plain-language explanation. What is the reported behavior? What is expected? What R concepts do you need to understand the problem? Do not just write a prompt where you just ask an agent to fix the problem outlined in a tidy-dev-day issue.

* **Making a reprex.** A minimal reproducible example is a small, self-contained demonstration of a problem that others can run and inspect. AI can help you strip a problem down to its essential pieces, though it'll often get you 90% of the way, and then you should spend some time personally seeing if you can reduce it further. Confirming that the reprex actually demonstrates the bug is also a great quick check of your understanding.

* **Getting oriented in an unfamiliar codebase.** “Where is `abort()` called from in this package?” “Walk me through what this S3 method does.” "Explain this traceback." Questions and prompts like these can take a while to answer by grepping through an unfamiliar codebase; now they can take a minute—and leave you knowing more.

* **Proposing a fix.** Ask for candidate approaches—plural—and then compare them: What are the trade-offs? Does one fit the package’s conventions better? Which approach could you defend in review?

* **Understanding and validating the fix.** Whether the code came from you, your pair, or a model, ask questions until you understand what it changes and why it solves the problem. Run it. Try to break it. Read the surrounding code. If you cannot explain the change, you are not done yet.

* **Tests and other scaffolding.** AI can help you draft test cases, check roxygen2 documentation, tighten a PR description, or untangle a git mishap. But you should understand what each test establishes, why it should fail before the fix, and why it should pass afterward.

A good rule of thumb: *you should be able to explain the problem, the approach you chose, the tests, and every material change in your PR to your reviewer.* If you cannot, pause and use AI—or a person in the room—to help you understand. That understanding is the part you came for.

## Recommended reading

[Code is the Byproduct](https://yagmin.com/blog/code-is-the-byproduct/) by Jim Yagmin, on getting better results from AI tools by using them to build understanding through precise, narrow questions rather than treating them as code generators.
