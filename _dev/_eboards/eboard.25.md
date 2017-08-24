---
title: Eboard 33  Project check-ins
number: 33
section: eboards
held: 2017-04-03
current: true
---
CSC 322.01, Class 33: Project check-ins
=======================================

_Overview_

* Preliminaries
    * Notes and news
    * Upcoming work
    * Extra credit
    * Questions
* Regroup
* Visits with groups

### News / Etc.

* Welcome back from break!  I hope that you had a relaxing time.
* Congratulations to our baseball team for sweeping the blueboys.
* I had hoped to do a Rails project during break so that I could better
  learn Devise; paperwork interfered.
* Warning: I may need to miss portions of classes for the next few days to 
  do some interviews.
* Yes, CSC322 now meets 1-3pm MWF for the rest of the semester.  But you
  don't have to do (much) work outside of class.

### Upcoming work

* Normal project progress.

### Good things to do

* Today at 4:15 p.m., JRC 101: "Sad! Or Stronger Than Ever? American Journalism 
in the Age of Fake News, Social Media, and Donald Trump."
* Tomorrow at 4:15 p.m. JRC 101: The 1st Mando lecture. "Reflections By Pulitzer
-Prize-winning writer Dale Maharidge & photographer Michael Williamson."
* BAX Opening Reception (plus Robert Hodierne photographs) Friday 4:30-5:30.   F
aulconer gallery.
* CS Table tomorrow!  Gadfly: CS Apps for Democracy!
* Baseball games Saturday at 1pm and 3:30 pm vs. Monmouth (if it ever stops rain
ing)
* Track and Field Saturday at Cornell at 11 am.  
* Women's Tennis Saturday at 10:00 am

### Questions

SpamR
-----

Goals

* Render emails on home page (3 points)
    * Working on that.  Thinking about stealing Bootstrap code.
    * Working on the layout of each message.
    * Know how to fetch them.
* Fix content parsing bug; needs help with apostrophes and ellipses (1 point)
    * Mostly done.  One small problem with lots of newlines with embedded 
      pictures.  Rule: More than N (3) newlines, compress to three newlines.
* Test content parsing (3)
    * Getting all of the contents from the random spam Sam has been sending.
    * Throws away hyperlinks.  Boo!  The Gems are getting in the way.
      Might look into what Nokogiri is doing and if there are alternatives.
    * These are "by hand" tests, not unit tests.
* Add tags to messages (2)
    * Using a taggable Gem.  Attaches an array of strings.
    * You can search by those.
    * How will these get added?  Subject bar search for title.
    * Might also do text searches.
    * No UI for tagging.
* Investigate filter/search algorithms (2)
    * Working on it
    * Have forgotten the code they wrote before break
    * Starting on searching based on tags.
* Finish admin model (3)
    * Thinks it's working
    * Need to write tests.  That's the next step.

Observations

* Don't work on the main branch!
* Separate cloud 9 vms is fine.

Job board
---------

Goals

* Flesh out testing (create tests) [5 points]
    * Have about a dozen tests.  Got to deal with Devise chaos.
    * Using whatever you get with rake test.
* Skin additional pages [3 points]
    * Mostly a case of getting Bootstrap in place
    * Front page skinned.  Nothing else.
    * Should check other devices.
    * Verified permission to use.
* Filtering [2 points]
    * Know how to do but haven't done
* Searching [4 points] (if there's time)
    * Not yet
* Maybe some other things, too.

Volunteer board
---------------

Goals

* Merge branches [3]
    * Almost complete; just need a few fixes to event stuff.
    * Trouble merging admin one, but should get done today.
* Create organization login [2]
    * Working on it.  Might be done by end of class.
* Create user login [2]
    * Not yet done; working on views first.
* Create user view [2]
    * Have ideas on how to do.  Creating a CSS file and other templates.
    * Have not yet used Bootstrap, but will
* Create organization view [2]
    * Have ideas on how to do
* Create event view [2]
    * Have ideas on how to do
* May need to work on controllers, too.
    * In progress.  Mostly under control.
* May need help at the end of today's class or the start of next class.

Curricular planning
-------------------

Goals

* Create landing page [3 points]
    * Still in progress
* Research separate user types on dash board [2 points]
    * Research is done
    * Models are done
    * Designed what they want to do
* Implement separate user type son dash board [2 points]
    * This week!
* Create login page [2 points]
    * Done
* Design student interest input engine [2 points]
    * The user experience / workflow
    * Focusing on the first-time-through experience
* Implement Dashboard create course [3 points]
    * Figuring out what needs to be known
* Test `newCourse` POST function [2 points]
    * Working on tests
    * They mostly exist, but working on it
* Create `newCourse` POST function [2 points]
    * Created.

Notes

* Mostly working individually

Mayflower
---------

Goals

* User pages: Search results [5 points]
* User pages: Profile [5 points]
* Decide on testing framework [2 points]
* Tests for login page [3 points]
* Tests for search [4 points]
* Tests for admin login [3 points]
* Admin user model [3 points]

Notes

* Has switched around people.
