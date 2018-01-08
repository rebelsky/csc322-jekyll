---
title: Eboard 27  Reports and Wrapup
number: 27
section: eboards
held: 2017-12-05
current: true
---
CSC 322.01, Class 27:  Reports and Wrapup
=========================================

_Overview_

* Preliminaries
    * Notes and news
    * Upcoming work
    * Extra credit
    * Questions
* Presentations
* Work time

### News / Etc.

* Final reports due this Friday.

### Upcoming Work

* Presentations Thursday.

### Good things to do

_Note: I do not do extra credit in two-credit classes._

* Newtown talk tonight.
* Lots of music.

### Food for Thursday

* OJ
* Muffins
* Fruit
* (Coffee?)
* Cheese
* Fizzy wine
* Egg Nog

Friday's Public Presentations
-----------------------------

Plan: 9:00-10:30.  Your talk will be about 8 min, plus setup, plus
questions.  We assume fifteen minutes per group.

*  9:00 Local Foods
*  9:15 Placeholders (survivor support)
*  9:30 PALS
*  9:45 Greater Poweshiek Community Foundation
* 10:00 Heartland Global Health Cooperative
* 10:15 Mayflower

Approximate structure of presentation.  Feel free to vary.

* Introduce yourself.
* Describe your partner and their goals.
* Describe the problem you were address with your partner.
* Describe and demo your solution.
* Talk about goals for your future.

The Placeholders (aka "Survivor Support")
-----------------------------------------

What did we accomplish in sprint 3?

* Met with client (finally)!  Discussed content of questions.
* Minor visual changes and an escape button (that needs to be fixed).
    * Escape button opens new tab and then redirects to Weather.com.
* Lots about UI.
* Security.  What happens if you have the URL of someone else's report?
  Used to be, you could see it.  Now, you get a 404 error
* Unable to complete: Branching nature to questions.
* Set up documentation for next semester.
* Velocity: 16, but would have been more if they hadn't failed at
  branching questions.

Demo

* Need to sign in.
* You can start a new record or view reports
* Note: Need email.
* Identify reports by first digit.

Questions

* Do you have a designated contact person?  "We will be around."
* We have confirming with AA.
* What happens if you lose your password?  "We can implement that quickly."
  Other schools only allow you to recover password.
* Do you need your passphrase to see the report?  Yes.
* Note: Make it clear that you cannot recover your passphrase.

Mayflower
---------

What did you accomplish?

* Specific residents' images [4 pts]
* Demo to Mayflower group [6 pts]
* Update database to seed from AWS [2 pts]
    * Easier ot update database.
    * Resolve security issues
* Update all resident information, FAQs, contact page, README [2 pt]
* Finished "two minutes ago": Weird issues with CSS fixed. [0 pt]
* Total 14 points

Wrapup

* Partners will be beta testing.
* Update data.  (Matching file names and real names.)
* Document steps for folks
* Deploy changes to Heroku
* Change ownership of GitHub repo and AWS bucket
    * Suggest that the next group make a fork.

Questions

* Layout?  There are some changes to be made.  "They asked: Make something
  that works first."
* They reached MVP!  But a group should still work on it next semester.
* Available for consultation?  Yes!

PALS
----

Final sprint and velocity

* Overhead: Merging, meeting, etc.: 1 pt
* Heroku: 2 pt
* Finish up interests: Ed/create: 2 pt
* Filters to admin dash: 2 pt
* As a volunteer, I can communicate with replies: 5 pt
* View info: 3 pt
* ...

Velocity

* 21 points, more than they expected.  Averaging 17.5

Next semester

* Send email to a filtered list of people.
* Improve community board.
* Scheduler (which was the original plan)

Demo

* You can reply
* You can delete anyone's replies.  Whoops!

Notes

* Seed your data well for good demos.

Heartland Global Health Consortium
----------------------------------

Front end issues

* Styling default views: 1 point
* Documentation for non-technical people to change content: 1 pt
* Documentation for Devise and Stripe for next group:3 points
* Notes on Bootstrap: 1 point
* Inserting the favicon: 1 point
* User posts on home page: 2 points
* Email confirmation (0 points allocated, but done)
* Display devise errors: 0 point
    * It's nice to know what went wrong
* Check that emails are affiliated with consortium (0 points allocated)

Database and search

* Interest and user tables (2 points)
* Fixed bugs to cross table and devise (0 points)
* Document database and models for next group (2 points)

Server setup

* Found most appropriate server for DNS (2 point)
* Help client setup AWS account and services (1 point)
* Set up DNS service (2 points)

Velocity

* Summary: Dealt with a lot of unexpected issues.
* Planned 33
* Finished: 18

Future

* Lots more cleanup.
* Registration system.

Questions

* Photo, where does it come from.
* Could not get user data from database using normal commands
* Next group: Admin and convference

Local Foods Connection
----------------------

* Back-end administrative stuff
* Making the front-end more user friendly.

Accomplishments

* Added icon support for location pins (uplanned)
* Added checkboxes for the search bar (unplanned)
* Include additional documentation to ease transfer [nope]
* Add functional to search bars for farms and recipes [nope]
* Allow users to filter search results [nope]
* Make the forms more friendly, stylish [nope]

Velocity

* Goal of 22 or so

Current state of system is good

* Authentication is ready.

Challenges

* Authentication gem with ActiveAdmin and Devise was more challenging than
  they expected.
* Merge conflicts after data changes
* Easier to navigate.

Final steps

* Make the forms look more user-friendly, stylish [2 points]
* Auto-scrolling feature for list of frams [1 points]
* Additional docuemntation to ease transfer [3 points]

Goals

* User experience; a guide.
* More visuals, etc.

Questions

* Why Pundit rather than CanCan

GPCF
----

Completed 18 points

* 2: Added footer
* 3: Wrote and set up FAQ for footer
* 4.5: Wrote new tests (really needed)
* 1: Changed location of logo
* 3: Ensure profiles of organizations show up
* 4: Wokring event updates
* 3: Deploy to Heroku
* 1: Update Edit Profile HTML
* 1: Fixed invalid dates

In the middle

* Had started a mailer.  Not finished
* Nicole wants emails when organizations sign up.
* Password reset emails.
* Nicer date selector.
* TImezones based on location
* "Remember me" for sign-in
* Color-code flash messages.

The path to MVP

* Working mailer: Need Heroku and MailGun
* Getting things from Nicole: Site info and text
* Bugs remain    
    * Volunteer count
    * Access to pages with URL

Passing it along

* Code was not as far along as they thought
   * Many bugs, barely functional, insufficient tests, 
     difficult to read, gross appearance
* Fixed bugs, added tests, added new functionality.  But more to do.
* Site is live at ...
* Thinks less than one semester away from MVP.

More things to pass along

* Folder of presentations, Trello Board, GitHub repos, Heroku
* And a list of what they were in the middle of doing.

So many obstacles for the next group

* Understand the volunteer and organization architecture
* Writing tests
* The mailer
* Picking a project
