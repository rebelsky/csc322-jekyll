---
title: Eboard 22  Check-ins (and OOD)
number: 22
section: eboards
held: 2017-11-14
---
CSC 322.01, Class 22:  Check-ins (and OOD)
==========================================

_Overview_

* Preliminaries
    * Notes and news
    * Upcoming work
    * Extra credit
    * Questions
* Subtype polymorphism, revisited
* Duck typing
* Static+explicit vs. dynamic+implicit typing
* Check-ins (individual)
* Work time

### News / Etc.

* Remember the project reports are due EVERY FRIDAY at 5 p.m.
    * Make sure to include all the alumni, me, KY, GB, and MG 
      in the recipient list
    * I didn't see all of them last Friday.
* I will be leaving today's class at 9:55 a.m. to teach CSC 161.

### Upcoming Work

_Please put your assignments in your planners or equivalent._

* **For Thursday: Read Chapter 6 of POODR.**
* Regular work on projects.
* Weekly Project Report, Friday at 5pm
    * What did you accomplish this past week?
    * What do you hope to accomplish in the coming week?
    * What obstacles stand in your way?
    * What resources do you need to help you accomplish your work?

### Good things to do

_Note: I do not do extra credit in two-credit classes._

* CS Table today: Robots
* Pub-free quiz Wednesday: Math/Stats
* Convocation Thursday
* Students of voice recitals Friday at 4:15 and 7:30 p.m.

### Questions

Subtype polymorphism, revisited
-------------------------------

* What is subtype polymorphism?
    * We want to write generic code.
    * We need to rely on our objects having a certain set of methods
      (capabilities)
    * In Java, we use interfaces.  
    * We can write sort for arrays of anything that implement the
      Comparable interface.
    * It's nice for classes to be able to implement multiple interfaces.
* Why do we use it?
    * Makes it easier to write generic code.
    * "Programming for the future"

Duck typing
-----------

* What is duck typing?
    * Implicit subtype polymorphism: Any class can choose to implement
      a set of methods (corresponding to an interface).  If it does,
      we can use it where we expect the interface.
    * If it waddles like a duck and quacks like a duck, it's a duck.
* How does duck typing support subtype polymorphism?
* What, if any, new things did you find in Metz's presentation?
    * How to know if you might want subtype polymorphism (ducks).
      Most frequently, case statements based on type (or variant thereof)
    * It's not a trivial problem.  Think carefully about what goes
      in the interface.  What methods naturally go together?
    * Passing in a "query me for data" object makes it easier to write
      the interfaces.
         * Could be a hash
         * Could be self

Static+explicit vs. dynamic+implicit typing
-------------------------------------------

* Argument for static typing
    * You can catch a lot of errors at compile time, particularly if
      people can't hack around the system.
    * Compilers can optimize based on their knowledge of types.
    * Explicit interfaces are nice.  
        * Give you confidence in your code.
        * Documents!
        * Documentation helps control change
* Arguments for dynamic typing
    * We don't care about program efficiency; we're not compiling anyway
      (the program needs to be more adaptable)
    * Metz says it makes metaprogramming easier (writing programs that
      write programs)
    * Easier to adapt dynmically while a program is running
    * Programmers don't tend to make type mistakes

Check-ins (individual group)
----------------------------

Work time
---------

