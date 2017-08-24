---
title: Eboard 34  Project Reports
number: 34
section: eboards
held: 2017-04-24
---
CSC 322.01, Class 34:  Project Reports
======================================

_Overview_

* Preliminaries
    * Notes and news
    * Upcoming work
    * Questions
* Time to prep
* Presentations (a bit more time)

### News / Etc.

### Upcoming work

### Good things to do

* CS table tomorrow.
* CS extras Thursday

### Questions

Volunteer board
---------------

Goals

* Create user login [2 points]
* Get devise working with organizations [4 points]
    * Should be 2, but users were complicated
* Tests for users [2 points]
    * Broken.  No.
* Tests for events [2 points]
    * Yes.
* Tests for organizations [2 points]
    * No.
* Exploring user views [1 point]
    * Done.
* Get calendar working [2 points]
    * Yes.
* Search bar [2 points]
    * No.
* Profile page [2 points]
    * Yes.
* Getting admins to work [2 points]
   * No

Velocity: 13

Demo

* There's a non-working, non-explained "Private" box.
* Users can currently create events, but they shouldn't.
* How do you tell if someone can update the event?
* Multiple ways to view events.

Plans for final sprint

* Fix tests for users [2 points]
* Write tests for organizations [1 point]
* Link events to users and organizations [2 points]
* Add private flag [1 points]
* Fix bug in admin login [2 points]
* Admin approval of orgs [3 points]
* Write documentation [3 point]

Questions

* Can we change private flag?  Yes.
* Will you be at MVP?  No.  Minimally working, but will still need
  things to make it nicer.
* Will anyone be back?  No.

Job board
---------

Goals

* Saved postings [3 points]
    * Done
* Make an account page which lets you see saved postings and
  edit account settings [5 points]
    * Done
* Finished filtering [5 points] 
    * Multi-sprint endeavor
* Added Captchas to the new post. [1 point]
    * Done
* Talked to PM about modifications [1 point]
    * Done
* Markdown interpreter to posts [1 point]
    * Done
* Expire and archive posts [5 points]
    * Done
* Think about UI for searching archived posts [1 point]
    * No
* Timeouts - automatic logout [1 point]
    * Yes
* Talk to ITS about getting a VM [1 point]
    * No
* Choose a name [1 point]
    * No

Velocity: 22 points

Demo

* Anyone can create a posting.  But it has to be approved by an admin.
* You can save any job to your account.
* Mulitple search criteria possible.  Yay Ransack!
* How does it work without Javascript?  Probably not so well.
* Anyone with a grinnell.edu account can make an account.

Final sprint

* Check Javascript and fix if necessary [3 points]
* ITS [1 point]
* Name [1 point]
* Make archives searchable in a useful way [2 points]
* Drop-down menu [2 points]
* Document [4 points] 
* Preview posts [3 points]
* HTML Injections [2 points]
* UI hook for unsaving [1 point]
* Add location field [1 point]
* Add contact field [1 point]

Questions

* How do we limit the user to grinnell.edu?  Devise plus regular expressions.
* csc for computer science careers.
* Will you support for free?  Yes.  Nick will.
* MVP by the end of the semester?  Yes, provided we can host.

Long-term goals

* Parsing.

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

Demo

* Seems to be mostly working.
* Improve UI for for tagging.

Goals

* Write tests and documentation [3 points]
* Dry out code [2 points]
* Show messages from a certain time period [2 point]
* Differentiate user and admin [3 points]
* Heroku compatible [2 points]
* Talk to ITS about server? [1 point]
* Explore attachments [2 points]

Questions

* MVP?  Yes.
* Continue?  Maybe.
* How are you getting your email from gmail?  pop3!

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
    * Test [2 points]  NO
    * Shows appropriate info (course, prof, enrollment)
    * Faculty/admin can add new semesters and offerings
    * Students can check "I plan to take this"
    * Query for dashboard [2 points]

Velocity: 16

Demo

* It looks like most parts are working.
* The faculty member cannot look at who is planning to take each course
  (except through database access)

Final sprint

* Fix tests [2 points]
* Student interest POST reuests [2 points]
* Course description popover [2 points]
* Root route / landing page [3 points]
* Section numbers [1 point]
* Make it pretty [3 points]
* Verify email [2 points]
* Editing courses [2 points]
* Editing offerings [2 points]
* Archive semesters [1 point]
* Correct ordering of semesters [1 point]
* Correct ordering of courses within semesters [1 point]

Long-term

* Allow admin to view data without resorting to SQL>

Questions

* Past semesters?  Archiving.  Manually.

* Edit pages
    * Next sprint
    * Next sprint
* Get organized
    * Soon!

Mayflower
---------

Goals for this sprint

* Create mockup of search page to show UI/structure [1 point]
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

Final sprint

* Make about/contact pages using specs [2 points]
* Talk to clients [1 points]
* Search features tests [3 points]
* Revise tests for admin/login and document [3 points]
* Admin create and edit new users [5 points]
* Something else [3 points]
* Add photos [3 points]
* Styling [3 points]
* Documentation [3 points]

Demo

* It works!
* Users and Residents are different

Questions

* MVP?  Yes.
