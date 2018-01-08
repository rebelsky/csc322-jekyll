---
title: Eboard 24  Reports
number: 24
section: eboards
held: 2017-11-21
---
CSC 322.01, Class 24:  Reports
==============================

_Overview_

* Preliminaries
    * Notes and news
    * Upcoming work
    * Extra credit
    * Questions

### News / Etc.

* No reports due this Friday.
* This is our last sprint.

### Upcoming Work

_Please put your assignments in your planners or equivalent._

* No more POODR
* Regular work on projects.

### Good things to do

_Note: I do not do extra credit in two-credit classes._

* CS table today
* Harp concert tonight at 7pm in Faulconer.

### Questions

## Group 1: Grinnellisto

### Work accomplished

* APply global template
* Change admin URL - Security issue
* Create fixtures
* Add sample questions to development database
* Set up system to  add sample questions
* Add sample questions
* Does the passphrase encrypt? (2)
* Determine security (1)

Last sprint plans

* Create container site (3)
* Add sample questions (2)
* Learn about encryption (2)
* Sync the development website (1)
* Friday email (1)
* How secure is Heroku? (1)

### Velocity

* Using a three level system: 1 is easy, 2 is medium, 3 is hard.  7 points
  in the past sprint.
* Broke things up into sprints.    Lots of overhead.

### New Tasks

Note: Container is running and (mostly) bug-free

* Recolor to meet accessibility guidelines.  (It's super inaccessible - 
  no contrast.   (1)
* Links to materials (?)
* Dynamic question functionality (3)
* Meet with Rob to discuss content (3)
* Make so only users that created a report can CRUD it (?).

About twelve total.

### Demo

* Lots of issues with naming.

### Resources needed

* Meeting with client.  Does Sam need to intervene?

### Q&A

* Q: How did you make your design decisions, such as centered?
  A: That's how it was in most of the sites.
* Q: How did you come up with your numbers
### Critique

* Needed to check the laptop with the system.
* Needed to rehearse.

## Group 2: Heartland

### Work accomplished

Plans

* Only let logged in users post (3 points)
* Testing (13 points)
* Accessibility (1 point or 10 points)
* [Database stuff]
* Payment system

Actual

* Payment system [DONE!]
* Testing for Devise [DONE!]
* XSS testss for Post model [DONE!]
* Integrate Devise with Posts
* Add Webpack to asset pipeline for custom Quill build [PARTIAL]
* Join table (partial)
* Fixed some bugs

Partial

*  Accessibility

### Velocity

### New Tasks

* Create new registration page [2 points]
* Domain research and registration [2 points]
* Figure out deploy logistics [? points]
* Finish implementation of join table [5 points]
* [Sam missed andrew]
* Prepopulate
* ...

### Overview

Completed

* Web site is deployed
* Extra functionaly
* Heartland draft

Planned

* Public Website

### Demo

* It's mostly running.

### Q&A

### Critique

## Group 3: GPCF

### Work accomplished

Plans

* Confirmation emails (4)
    * Account sign up
    * Post signing up for an event
* Changes to sign up process
    * "Form reatins correct info when incorrect info is used"
    * Approval process is explained (1)
* Future edits to home page (?)
    * Format should match for signed in vs not signed in
    * Background from client
* Create event scenario suite
    * Error messages (2.5)
    * Understand why

Actual

* Popup solution (raised in last sprint).  Created new system.
* Discovered confirmation emails did not work.
* Cleaned up home page
* Added logo to pages
* Edited header
* [Started on footer] (not included)
* Lots of stuff on events, but not finished. (2.5)
* This presentation and other administrative overhead

### Velocity

* 15 points
* Note: Met with client - full steam ahead to complete

### New Tasks

* Backlog from prior sprint
* Continue on email
* Aesthetics
* FAQ
* TESTING

### Demo

### Resources needed

### Q&A

* What did you use for checking accessibility?

### Critique

## Group 4: Mayflower

### Work accomplished

Planned

* Rename GIthub Repo [0.5 pts]
* Work with devise to enable administrators to change user passwords
  [4 pts]
* Style search page [3 pts]
* FAQ page [2 pts]
* Update user info (not with Google sheet) [5 pts]
* Create administrators [2 pts]
* Make sure images are displayed correctly (tests) [2 pts]

Actual

* Got images to show up from AWS! (5 pts)
* Admin privs
     * Edit/delete current residents [1 pt]
     * Fixed headers [2 pt]
* Password reset problem [1 pt]
     * Users can now change thier password
* Visited Mayflower facilities and met with clients [6 pt]
     * Expects to have a demo next time
* Migrated tests [1 pt]
* Set up AWS environment variables [4 pts]

### Velocity

### Demo

### New Tasks

* Have specific residents' images show up instead of test image (4 pts)
* Demo (6 pts)
* Update tests (3 pts)
* Document project status (e.g., Github repo, AWS, etc.) [Yay!] (3 pts)
* Create users nad make it easy to link new user to resident profile (2 pts)
    * Residents and users are separate things
* Update resident info, FAQs, contact page (2 pts)

### Q&A

* Deployable?  (Not optimal, but usable.  Needs little things.)
* Need to talk to past group re why separate residents/users

### Critique

## Group 5: PALS GALS

### Work accomplished

* Most of tasks done.
* Some issues merging branches.

### Velocity

* Completed 18 points

### Demo

i* Working well.  Looks bad.

### New Tasks

* Merging, meeting, etc. [1 pt]
* Heroku [2 pt]
* Finish up interest implementation [2 pt]
* Filters on amin dash [2 pt]
* Reply to posts [2 pt]
* Acccess profile page [3 pt]
* Click on name [1 pt]
* Some backfill tasks
     * Tests
     * Debug

### Q&A

* Ready?  Not at MVP.  But in another semester ...

## Group 6: Local Foods

### Work accomplished

Planned

* Parse JSON data responses to filter results
* Display search results in a more user-friendly way
* Create sign-up form with authentication
* Create a page for farmers to add/update their info

Actual

* Create new fields in DB
* Create a form page for farmers to enter data
* Data verification 10 pt
* Create skeleton page to view approved farms
* Add recipes to map page
* Added map animations
* Add filtering options
* Add search bar for recipes

### Velocity

* Did not implement user authentication for review page
* Integrating filtering options
* Integrating dynamic model
* Dropdown animations for markers on map
* Skeleton page to view available farm info.
 
### Demo

### New Tasks

* New survey info - 4 pts
* Allow farmers to update farm info - 3 pts
* Make the forms more user-friendly (style) - 2 pts
* Fix additional information pop-up - 2 pts
* Add functionality to search bars -2 pts
* Filter search results -3 pts
* "Dynamic models" -1 pts
* Documentation to ease transfer - 2 pts


### Resources needed

### Q&A

### Critique

### Resources needed

* Need to hear more from partner about the info.
* The data verification model is hard
* How do we verify farmer information?

### Q&A

* Would it make sense for MVP for farmers just to email stuff to Melissa.
    * Talked about that already.
* When are you meeting with client?
    * Next week

### Critique

Presentation

* Make sure you've thought about the technology.  Swapping laptops is
  hard.  Have things loaded.  Know how to switch page size.
* Generally good organization of slides.
* Interesting architecture.  Probably needs to be shown.

Miscellaneous

* Where did the other time go?
* Why wasn't Javascript in the list of velocity?
* Why don't the tasks in the list of points match the original points?

## Group 4: Mayflower

### Work accomplished

* Scrub github repo + put stuff on cloud [5 points]
* Deploy to Heroku [6 points]
* Cleanup repo.  Use branches [5 points]
* Make pretty page.  Four smaller things.  Both what they needed
  and what the client indicated.
    * Links that should only be available after login [1 pt]
    * Redundant links [1 pt]
    * Clarify links [1 pt]
    * Custom mayflower logo [1 pt]

### Work not accomplished

* Note: Need to Style home page
* Note: Need to simplify 
* Style the rest of the page [3 pts]
* Testing of images [2 pts]
* Set up environment variables for group members [0.5 pts]

### Velocity

* Planned 21 pts
* Succeeded: 15.5pts
* Note 1 point is two hours

### Demo

* Good.

### New Tasks

* Rename GIthub Repo [0.5 pts]
* Work with devise to enable administrators to change user passwords
  [4 pts]
* Style search page [3 pts]
* FAQ page [2 pts]
* Update user info (not with Google sheet) [5 pts]
* Create administrators [2 pts]
* Make sure images are displayed correctly (tests) [2 pts]

### Resources needed

### Q&A

* The questions are weird.  Have you talked about them with the client
    * Part of our next meeting.
    * Need to understand culture.
* Multiple search pages

### Critique

* Introduce yourselves (for everyone)
* Stories would be nice.  "As an administrator, I should be able to 
  create other administrators, so that I can share the burden of
  managing the database."  "As an administrator, I should be able to
  delete another administrator, so that ..."
* Good setup of laptop

Points and Velocity

* Smaller tasks.  Scrub repo is one task.  Put stuff on cloud is a second.
* Don't use 0.5 points

## Group 5: GPCF

* Three groups: 2, 2, 1
* Low, medium, high priority
* Point values 1-5 based on anticipated complexity.  Not based on hours.
* 15 points accomplished.
* Problematic dealing with legacy code.  Some of the problems were symptoms
  of larger problems.  Hard to gauge of how difficult things.  Tasks create
  new tasks.
* Branch not merged.

### Work accomplished

* (1) Account sign up spacing
*

### Velocity

### Demo

* Clearer UI - lots of small edits

### New Tasks

* Confirmation emails (4)
    * Account sign up
    * Post signing up for an event
* Changes to sign up process
    * "Form reatins correct info when incorrect info is used"
    * Approval process is explained (1)
* Future edits to home page (?)
    * Format should match for signed in vs not signed in
    * Background from client
* Create event sceanio suite
    * Error messages (2.5)
    * Understand why

### Resources needed

### Q&A

* Accessibility?
* Warning: Email may be hard.

### Critique

* Orthogonal work is nice.
* Nice job of moving between the task board and the UI.
* Hard to tell from the presentation what your precise tasks were.
* Folks are really getting introduced to the big picture this week, so
  you needed a bit more time.
* For a more efficient presentation, you may have to give a quick summary
  rather than details.

## Group 6: Heartland

### Work accomplished

* Quill.js frontent for posting.  WYSIWYG editor.  [12 points]
    * Security issues.   Yech.
* Devise plus testing.  Conflicted with initial setup.  [7 points]
    * Can you allow emails from any of the cooperative schools?
* More flexible user model.  Needs to be optimized 5 points
* Jerry: User interest data tables
* Jimin: Reformat Web site 5 points

### Velocity

### Demo

### New Tasks


### Resources needed

* Need to meet with client.  (Do I need to intervene?)

### Q&A

* Have you thought about a better error message?  (E.g., "Only the following
  schools are allowed".)
* Payment system: Talk to mentor.

### Critique

* Prepare your Dog and Pony show!  Test your Dog and Pony show!
* Feels like individuals, rather than group.
