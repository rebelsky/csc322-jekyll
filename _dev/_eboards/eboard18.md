---
title: Eboard 18  Work time + OOD
number: 18
section: eboards
held: 2017-10-31
---
CSC 322.01, Class 18:  Work time + OOD (or vice versa)
======================================================

_Overview_

* Preliminaries
    * Notes and news
    * Upcoming work
    * Questions
* An example of good sprint planning
* Managing dependencies
* Fun with code
* Work time

### News / Etc.

* Happy halloween!  (Should you choose to celebrate.)
* Remember the project reports are due EVERY FRIDAY at 5 p.m.
    * Make sure to include me, KY, GB, and MG in the recipient list
* Since you are working on your papers, we will not do another chapter
  of POODR on Thursday.  We will, however, return to Chapter 4 on Tuesday.
* Please text/call classmates who are not here.

### Upcoming Work

* Paper: Comparatively reflect on the [the new draft ACM code of
  ethics](https://ethics.acm.org/2018-code-draft-2/).  
    * E.g., What changes do you see as particularly important?
      What other changes do you think should still be made?  What else
      belongs?  What doesn't belong?  Etc.
    * Comparison to prior code of ethics.
    * Reflection on what needed to change given the change in
      computer technology.
    * Approximately 1000 words.  Correct grammar and spelling.  I may
      invoke the MC/JS rule if there are multiple problems with grammar
      or spelling.
    * Due via email at 10:30 p.m. on Thursday, Nov. 2
* Regular work on projects.
* Weekly Project Report, Friday at 5pm
    * What did you accomplish this past week?
    * What do you hope to accomplish in the coming week?
    * What obstacles stand in your way?
    * What resources do you need to help you accomplish your work?
* For Tuesday: Read Chapter 4 of POODR.  

### Good things to do

_Note: I do not do extra credit in two-credit classes._

* CS Table TODAY 
* Cool concert Wednesday
* CS Extras Thursday
* Follow our teams to their various MWC conference meets

### Questions

An example of good sprint planning
----------------------------------

* Centers on user stories and feedback from client on which stories\
  to priroitize.
* Gives sensible tasks asdsociated with stories.
* Easy to track points and who is working on what.

Managing dependencies
---------------------

_What's the big picture ideas from Chapter 3 of Metz?_

* Good program design isolates changes.
* Although OOD lets us encapsulate things in objects and therefore
  seemingly isolate change, objects can be tightly coupled with a
  change in one affecting others.
    * The names of other classes.
    * The meanings, types, and order of parameters.
      `sam = new Professor("Rebelsky","Samuel","Computer Science",0);`
* Good object-oriented design decouples tightly coupled objects (or,
  more generally, keeps coupling loose in the first place).
* Two key approaches
    * Use interfaces rather than classes (lets us decouple from any
      underlying assumptions about the class name or constructors)
    * Use hashes, rather than ordered parametrers, in constructors
      and procedure calls
* Also: You can flip dependencies.  Have the thing that changes more
  frequently depend on the thing that changes less frequently.

_What do you think about the following claims from Metz?_

Each message is initiated by an object to invoke some bit of behavior. All
of the behavior is dispersed among the objects. Therefore, for any
desired behavior, an object either knows it personally, inherits it,
or knows another object who knows it. (p. 35)

When two (or three or more) objects are so tightly coupled that they
behave as a unit, it’s impossible to reuse just one. Changes to one
object force changes to all. Left unchecked, unmanaged dependencies
cause an entire application to become an entangled mess. A day will
come when it’s easier to rewrite everything than to change anything.
(p. 38)

This technique is known as dependency injection. Despite its fearsome
reputation, dependency injection truly is this simple. (p. 41)

When the code in line 11 changed to use a hash, it lost its dependency
on argument order but it gained a dependency on the names of the keys
in the argument hash. This change is healthy. The new dependency is more
stable than the old, and thus this code faces less risk of being forced
to change. Additionally, and perhaps unexpectedly, the hash provides
one new, secondary benefit: The key names in the hash furnish explicit
documentation about the arguments. This is a byproduct of using a hash
but the fact that it is unintentional makes it no less useful. Future
maintainers of this code will be grateful for the information. (p. 47)

Pretend for a moment that your classes are people. If you were to give
them advice about how to behave you would tell them to depend on things
that change less often than you do. (p. 53)

More fun with code
------------------

_Computer scientists and software designers make points through code
as well as through text.  Hence, you should read code carefully.  We'll
look at two examples from this chapter of Metz._

_What's going on in the following example from p. 43?_

```
class Gear
  attr_reader :chainring, :cog, :rim, :tire 
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog       = cog
    @rim       = rim
    @tire      = tire
  end

  def gear_inches
    ratio * wheel.diameter
    # Old code: ratio * Wheel.new(rim,tire).diameter
    # Note: For Java thinkers: wheel is effectively this.wheel
  end

  def wheel
    @wheel ||= Wheel.new(rim, tire)
    # If @wheel already exists, do nothing.  Otherwise, do the thing
    # on the right and assign it to @wheel.
  end

  # ...
end
```

* Potential to isolate the dependency on wheel to just one part of the class.
* "Lazy object creation" - This only builds the wheel when we need it.
* We are relying on Wheel having a diameter method; that's still fairly
  tight coupling.
* Good Ruby practice: Refer to methods, not fields.
* This change makes it easier for us to do subsequent changes.

_What's going on in this example from p. 50?_


```
module SomeFramework
  class Gear
    attr_reader :chainring, :cog, :wheel
    def initialize(chainring, cog, wheel)
      @chainring = chainring
      @cog       = cog
      @wheel     = wheel
    end
  # ...
  end
end

module GearWrapper
  def self.gear(args)
    args = self.gearDefaults.merge(args)
    SomeFramework::Gear.new(args[:chainring],
                            args[:cog],
                            args[:wheel])
  end
  def self.gearDefaults
    {:chainring => 40, :cog => 18}
  end
end

# Now you can create a new Gear using an arguments hash.
GearWrapper.gear(
  :cog       => 11,
  :chainring => 52,
  :wheel => Wheel.new(26, 1.5)).gear_inches
# vs. SomeFramework.Gear.new(52, 11, Wheel.new(26, 1.5)).gear_inches
```

* Use case: We have a class we can't change which makes the bad decision
  to have fixed-order parameters rather than using a hash.
* Solution: To build a wrapper (adapter) that accepts a hash and builds
  something using the original constructor
* Why hashes are useful: Consider the two calls at the end
* WHy hashes are useful: We can set defaults
* But ... huge performance hit

Detour: More realistic example.  We started with initialize(x,y) and
decide to change to initialize(r,theta).  We will assume that we had
originally initialize(args) following the hash approach.

Old

```
class Vector
  def initialize(args)
    @x = args[:x]
    @y = args[:y]
  end
```

New

```
class Vector
  def initialize(args)
    @radius = args[:radius] || sqrt(square(args[:x]) + square(args[:y]))
    @theta = args[:theta] || ...
  end
end
```

* Old call: new Vector(x: 3, y: 2) works
* New call: new Vector(radius: 5, theta: 2*pi) works


Work time
---------

