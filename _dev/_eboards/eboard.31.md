---
title: Eboard 31  Project Check-ins
number: 31
section: eboards
held: 2017-04-17
---
CSC 322.01, Class 31:  Project Check-ins
========================================

_Overview_

* Preliminaries
    * Notes and news
    * Upcoming work
    * Extra credit
    * Questions

Mayflower
---------

Goals for this spring

* Create non-working search page to show UI/structure [1 point]
* Create database for search page to use [previous sprint]
* Get the Ransack gem to work [3 points]
* Wrap up working search page [2 points]
* Click on name [3 points]
* Fix all the skipped steps in Cucumber in login tests [5 points]
* Discuss admin capabilities [3 points]
* Write tests for admin capabilities [5 points]
* Limit access to some pages so that only Admin can save them [1 point]
* Allow admin to edit users [5 points, this sprint]
* Allow admin to edit residents [5 points, next sprint]
* Demo app [1 point]
* Met with clients [2 points]

Notes

* Met with clients.  Generally good.
* Could not present; Wireless issues.
* They will distribute passwords to users; we will distribute
  passwords to them.

Volunteer board
---------------

Goals

* Create user login [2 points]
* Get devise working with organizations [4 points]
    * Should be 2, but users were complicated
* Tests for users [2 points]
* Tests for events [2 points]
* Tests for organizations [2 points]
* Exploring user views [1 point]
* Get calendar working [2 points]
* Search bar [2 points]
* Profile page [2 points]
* Getting admins to work [2 points]

Notes

* Hitting large numbers of strange errors
    * When they added devise, they got a bunch of new views that
      they need to look at.
    * Solution to one odd problem: Redo.

SpamR
-----

Goals

* Search bar [3 points]
    * Using Gem
* Tag buttons that automatically filter [3 points]
    * Home
    * Individual message pages
* Automatically fetching email [2 points]
* Limiting number of messages on a page [2 points]
* Styling messages on home page and individual message pages [2 points]

Issues

* Admin redirection.

Job board
---------

Goals

* Saved postings [3 points]
    * Done
* Make an account page which lets you see saved postings and
  edit account settings [5 points]
* Finished filtering [5 points] 
    * Multi-spring endeavor
* Added Captchas to the new post. [1 point]
* Talked to PM about modifications [1 point]
* Markdown interpreter to posts [1 point]
* Expire and archive posts [5 points]
* Think about UI for searching archived posts [1 point]
* Timeouts [1 point]
* Talk to ITS about getting a VM [1 point]
* Choose a name [1 point]

Questions

* How do we create admins?  Seed file plus admins can create accounts.
* Do we need different levels of admin?  No.
* Can we host it on ITS?  They should be able to get a VM.
* Seed for demos.

Curricular planning
-------------------

Goals

* Implement CanCan and Rolify [2 points]
* Revert to single user in devise [1 point]
* Finish separation of users (admin vs. faculty vs. students) [3 points]
    * Using CanCan and Rolify
    * Overriding create method to use Rolify
    * Moving from console
* Dashboard
    * Front end [3 points]
    * Controller [2 points]
    * HTML form [2 points]
    * Test [2 points]
    * Shows appropriate info (course, prof, enrollment)
    * Faculty/admin can add new semesters and offerings
    * Students can check "I plan to take this"
* Query for dashboard [2 points]
* Edit pages
    * Next sprint
* Archive semesters?
    * Next sprint
* Get organized
    * Soon!

