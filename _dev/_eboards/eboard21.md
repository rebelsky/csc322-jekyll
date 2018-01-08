---
title: Eboard 21  Work time (and OOD)
number: 21
section: eboards
held: 2017-11-09
---
CSC 322.01, Class 21:  Work time (and OOD)
==========================================

_Overview_

* Preliminaries
    * Notes and news
    * Upcoming work
    * Extra credit
    * Questions
* Public, private, and in between
* Designing flexible interfaces
* Work time

### News / Etc.

* Remember the project reports are due EVERY FRIDAY at 5 p.m.
    * Make sure to include all the alumni, me, KY, GB, and MG 
    in the recipient list
* I will be leaving Tuesday's class at 9:55 a.m. to teach CSC 161.

### Upcoming Work

_Please put your assignments in your planners or equivalent._

* **For Tuesday: Read Chapter 5 of POODR.**
* Regular work on projects.
* Weekly Project Report, Friday at 5pm
    * What did you accomplish this past week?
    * What do you hope to accomplish in the coming week?
    * What obstacles stand in your way?
    * What resources do you need to help you accomplish your work?

### Good things to do

_Note: I do not do extra credit in two-credit classes._

* Students of NM voice recitals this and next Friday at 7:30 p.m.
* VR club
* Pub-free quiz
* Showvember Friday , Gardner, 80m

### Questions

Public, private, and in between
-------------------------------

Metz tells us that we should reflect carefully on the public and private
portions of our classes.  But are there things in between?  And how do
we indicate them.

* Different languages have different models
* Java: Public, private, protected, "no keyword" = package
    * Public - Everyone
    * Package - Anything else in same package
    * Protected - Visible to same class and subclasses 
    * Private - Only items in the same class
    * Can you have a package relationship that is not permitted under
      protected?
    * Can you have a protected relationship that is not permitted under
      package?  (We think the answer is yes, and that's kind of scary.)
* C++: Individual permissions ("elements of this class can accesss this 
  field/method")
* Ruby: Private, Protected, Public
    * Private: Only the same object
    * Protected: Same class or subclass
    * Public: Everyone

Designing flexible interfaces
-----------------------------

_What, from your perspective, are the primary points of this portion
of POODR?_

* Limit the number of connections in the "object knows object" graph.
* Interfaces are good because ....
    * They can help reduce dependencies
    * We can use subtype polymorphism (not from this chapter)a
    * They present the external requirements for our objects
    * Focus on the *what* not the *how*.
* Public: Change as rarely as possible.
* It is often useful to limit the number of methods in your interface.
* Law of Demeter - Don't chain your methods, 
     * Clarity
     * Increases chance of things breaking
* Good object-oriented design begins with *messages*, not objects
* UML action diagrams are a really useful tool for developing your
  understanding of the system and the relationship between parts.
* Sometimes sending self is a successful strategy.

### Some quotations that Sam appreciates

The reason that test-first gurus can easily start writing tests is that
they have so much design experience. At this stage, they have already
constructed a mental map of possibilities for objects and interactions in
this application. They are not attached to any specific idea and plan to
use tests to discover alternatives, but they know so much about design
that they have already formed an intention about the application. It is
this intention that allows them to specify the first test. (p. 64)

Domain objects are easy to find but they are not at the design center of
your application. Instead, they are a trap for the unwary. If you fixate
on domain objects you will tend to coerce behavior into them. Design
experts *notice* domain objects without concentrating on them; they focus
not on these objects but on the messages that pass between them. These
messages are guides that lead you to discover other objects, ones that
are just as necessary but far less obvious. (p. 64)

This transition from class-based design to message-based design is a
turning point in your design career. The message-based perspective yields
more flexible applications than does the class-based perspective. Changing
the fundamental design question from “I know I need this class, what
should it do?” to “I need to send this message, who should respond to
it?” is the first step in that direction.  **You don’t send messages
because you have objects, you have objects because you send messages.**
(p. 67)

When the conversation between Trip and Mechanic switched from a *how* to
a *what*, one side effect was that the size of the public interface in
Mechanic was drastically reduced. (p. 71)

Every time you create a class, declare its interfaces. Methods in
the public interface should (a) Be explicitly identified as such;
(b) Be more about *what* than *how*; (c) Have names that, insofar as
you can anticipate, will not change; (d) Take a hash as an options
parameter. (p 77)

Work time
---------

