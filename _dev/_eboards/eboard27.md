---
title: Eboard 27  Rethinking object-oriented design (2)
number: 27
section: eboards
held: 2018-04-06
link: true
---
CSC 322.01, Class 27:  Rethinking object-oriented design (2)
============================================================

_Overview_

* Preliminaries
    * Notes and news
    * Upcoming work
    * Extra credit
    * Questions
* Talk
* OOD Revisited,
* POODR, Chapter 2

Preliminaries
-------------

### News / Etc.

* In case you've forgotten, our weekly "rhythm" is
    * Monday: Presentations and work time
    * Wednesday: Work time
    * Friday: Reading discussion and work time
* I'm still working on getting the 321/322 grades together.  Probably
  Sunday night.
* Note that you can find the code from thebook at
  <https://github.com/skmetz/poodr>.
* Sorry for the confusion on the journal.  I thought I had posted it on 
  Monday.  I should have Chapter 3's journal posted on Sunday.
* I am disappointed that Grinnell students did not hack the burrito
  contest.

### Upcoming work

* Reading for next Friday: [Chapter 3 of _Practical Object-Oriented
  Design in Ruby_](../readings/poodr03)
* [Paper](../assignments/paper): Write your own case study, based on a 
  real case.  Due 10:30 p.m. on Sunday, 15 April 2018.
* Normal Friday reports due today.

### Good things to do (Academic/Artistic)

* Tabla concert Today 7:30 p.m.
* Singers Sunday at 2pm.

### Good things to do (Peer)

### Good things to do (Misc)

* Softball April 7 at 1:00 p.m. and 3:00 p.m.
* Men's Tennis, April 14, 21, and 22.
* Track and Field Dick Young Invitational April 21

### Questions

Talk
----

OOD, Revisited
--------------

_We will review some key principles._

_Three key principles of OOD?_

* Polymorphism - We write code that can take many forms
    * Subtype - We can write generic procedures that just expect
      that their parameters provide certain methods.
      We can write a sort method that accepts any Comparable objects
      (that provide a compareTo method)
    * Parametric - We can define a type that works over other
      other types.  List of <X>.  In Java, ArrayList is an
      example of a parametric type (a generic type)
* Inheritance - You can inherit from a class (or interface)
  "Inherit" means that you gain methods and/or fields.
    * Are mixins inheritance?
* Encapsulation
    * Limit access to the internals of your class.
    * Does it relate to single responsibility principle?
    * Group related things together into one place.

_Why do we use OOD?_

* Good OOD supports reuse.  You can use your classes in other
  places.
* Good OOD supports refactoring; if the implementation is hidden,
  it's harder to break when you change it.
* Natural approach for some problems.  When we model real-world
  things, we see inheritance.
* Encourages abstraction.
* Keeps code DRYer.
* Good OOD is coding for the future.

_Note: Doing good OOD is hard!_

POODR, Chapter 2
----------------

_I've selected some examples from the book._

Here's the early example.  Suppose you had no encountered it previously.
What do you see as strengths and weaknesses?  (What does Metz indicate
are its strengths and weaknesses?)

```
class Gear
  def initialize(chainring, cog)
    @chainring = chainring
    @cog = cog 
  end
  def ratio
    @chainring / @cog.to_f
  end 
end
```

Weaknesses

* Probably won't be easy to extend.
* Undocumented.  What is a chainring?  What values can it have?
  (real?  integer?  non-negative?)
    * Is it radius, diameter, number of teeth, an object?
* Limit access to internal fields, even to internal methods.
    * Can add them manually.
    * Can add them with `attr_accessor` (metaprogramming)

Strengths

* Short and sweet.
* One clear purpose.
* Encapsulated.  Once we've created it, you can't get the value of
  either `chainring` or `cog`, which may not be relevant.


Here's an "improved" version.  What issues might occur as we switch from
the original to the new?  What else do we need to improve?

```
class Gear
  attr_reader :chainring, :cog, :rim, :tire
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    # tire goes around rim twice for diameter
    ratio * (rim + (tire * 2))
  end
end
```

What's the problem of updating from the old short-and-sweet version
to this version?  We did add new functionality.  That's valuable.
But ...?

* Might clarify computation by writing a separate method for the
  outer diameter.
* rim and tire seem unrelated to Gears.  (Needed for `gear_inches`, but
  ...)
* Breaks single responsibility
* Reveals a lot of info to the client.  Does the client need all that?
* Breaks the constructor.  How do you get around that?
    * In Java, create a separate constructor with a different set of
      parameters.
    * In Ruby, take advantage of default parameters
* Lack of documentation might still be an issue.
    * What's the diameter of a tire.

Here's the final version.  What could be improved?

```
class Gear
  attr_reader :chainring, :cog, :wheel
  def initialize(chainring, cog, wheel=nil)
    @chainring = chainring
    @cog       = cog
    @wheel     = wheel
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end
end

class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim       = rim
    @tire      = tire
  end

  def diameter
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end
end
```
