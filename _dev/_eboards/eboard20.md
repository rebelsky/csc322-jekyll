---
title: Eboard 20  Reports
number: 20
section: eboards
held: 2017-11-07
---
CSC 322.01, Class 20:  Reports
==============================

_Overview_

* Preliminaries
    * Notes and news
    * Upcoming work
    * Extra credit
    * Questions
* About reports
* Individual group reports
* Work time

### News / Etc.

* Remember the project reports are due EVERY FRIDAY at 5 p.m.
    * Make sure to include all the alumni, me, KY, GB, and MG 
    in the recipient list
* Since KY won't be here on Thursday, I'm moving the discussion of
  Chapter 4 of POODR to then.  (Mostly so that there's more time for
  her to help out today.)
* KY *will* be running the normal mentor session on Wednesday night
  6:30-8:30 p.m.

### Upcoming Work

_Please put your assignments in your planners or equivalent._

* Regular work on projects.
* Weekly Project Report, Friday at 5pm
    * What did you accomplish this past week?
    * What do you hope to accomplish in the coming week?
    * What obstacles stand in your way?
    * What resources do you need to help you accomplish your work?
* For Thursday: Read Chapter 4 of POODR.  

### Good things to do

_Note: I do not do extra credit in two-credit classes._

* Vote!  (If registered.)
* Animated Films, Tuesday, Nov. 7 (TODAY), 11:00 a.m., Faulconer
* CS Table (Computer-Aided Gerrymandering), Tuesday, Nov. 7 (TODAY), noon, 
  Day Dining Room
* Crip Technoscience, Disabled People as Makers and Knowers, Wednesday,
  Nov. 8, 4:15 p.m., JRC 101.
* Pioneer Weekend, this coming weekend.  Design a business idea (can be
  a nonprofit / for social good) have fun, get advice, and make money.
    * Sign up by Nov. 8.

### Questions

## About reports

Learning goals

* Learn how to talk about your project, to respond to questions.
* Paractice careful listening and asking questions.
* Learn how other groups approach broader issues of software design.

Details

* Goal: Finish prior two-week sprint, start current two-week sprint
* Finishing the prior two-week sprint
    * What did you accomplish?  (Ideally, in terms of the tasks that
      you talked about at the start of the sprint.)
    * What is your velocity?
    * Demo!
* Starting the next two-week sprint
    * Stories, tasks, and points
    * Additional resources needed
* Approximately ten minutes, including questions.  (7+3)

Technology for presentations

* Almost anything is reasonable
* Whiteboard
* Powerpoint / Googlepoint / Prezi / ...
* "Just talk"

What makes a good presentation?

* Watch and see.

## Group 1: PALS GALS

### Work accomplished

* Set up authentication system with Devise
* Set up admin structure with Active Admin
* Set up web-page structure for Community Board
* Did not complete sign-up and registration form for volunteers
* Note: There is also overhead for sprint planning, setup.
* Note: They had to write papers

### Velocity

* 16

### Demo

### New Tasks

* Whoops.  Sam missed these.

### Resources needed

### Q&A

* What was your process when making the design?
    * Focus on making it simple?
    * Assume that our audience is not familiar with technology
    * Looking at uniformity
    * Color scheme they will run by Client
* What's up with the URL bug?
    * May be session cache or ...
* Do you need Devise for ActiveAdmin, or are they independent?
    * Technically, yes.  
* What does the point represent?
    * A point is a pair hour.

### Critique

Presentation 

* Clear slides.  Good.
* Everyone talked.  Good.
* Some useful details (Bootstrap, Kickstart) not on slides.
* Make sure you know your technology.
* When you talk about the things you've built, it can be helpful to have
  the application up.  ("You can filter the post ...")
* Needs to work on timing.  You went long.
* Citations for images.
* Stories

Velocity

* You don't get points for planning.  That's expected overhead.
* You don't get points for work that's not completed.
* Velocity is based on your estimates, not the actual work.

## Group 2: Local Foods

Background: Goal is to create a map interface so that users can more
easily see where food comes from and farmers can add there information.

### Work accomplished

* Created a Javascript application for displaying the map 
* Create a database for farm information.  (Populated with dummy data.)
* Authenticated API endpoint for interface 
* Note: Hosted on SquareSpace. 

### Velocity

* Build and populate database [1 point]
* JSON [2 points]
* Base API route [2 points]
* Add header and Cross-Origin Resource Charing) [3 points]
     * This ended up taking longer than they'd planned.
* A point is two human hours.
* Velocity is 8.  (16 hours.)  You should have about 40 hours 4x2x5.

### Demo

* Looks nice.

### New Tasks

* Parse JSON data responses to filter results
* Display search results in a more user-friendly way
* Create sign-up form with authentication
* Create a page for farmers to add/update their info

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

## Group 3: Grinnellisto

### Work accomplished

* Meet with partner.
* Fix crash one
* Fix crash two
* Don't use URL
* Learn about Heroku and Calisto

### Velocity

* Using a three level system: 1 is easy, 2 is medium, 3 is hard.  7 points
  in the past sprint.

### Demo

* Note: Phasing out matching.

### New Tasks

* Create container site (3)
* Add sample questions (2)
* Learn about encryption (2)
* Sync the development website (1)
* Friday email (1)
* How secure is Heroku? (1)

### Resources needed

### Q&A

* Why remove matching?
    * Still an issue under discussion.
    * The system serves conflicting purposes.  Worry a bit about that.
* Where is the username?
    * That's something from the ctonainer site.  You log in and then 
      you enter a report.
* Can you update your report?
    * Yes.

### Critique

* Similar to previous groups: Figure out what happens on when you
  plug your laptop into our (mediocre) display)
* Good use of Github project management system (which is Trello like)
    * As a system
    * As the core of your presentation
* Care in use of language.  "Perpetrator"
* Straightforward demo
* Pair of presenters worked well

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

* Only let logged in users post (3 points)
* Testing (13 points)
* Accessibility (1 point or 10 points)
* [Database stuff]
* Payment system

### Resources needed

* Need to meet with client.  (Do I need to intervene?)

### Q&A

* Have you thought about a better error message?  (E.g., "Only the following
  schools are allowed".)
* Payment system: Talk to mentor.

### Critique

* Prepare your Dog and Pony show!  Test your Dog and Pony show!
* Feels like individuals, rather than group.
