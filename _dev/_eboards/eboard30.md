---
title: Eboard 30  Rethinking object-oriented design (3)
number: 30
section: eboards
held: 2018-04-13
link: true
---
CSC 322.01, Class 30:  Rethinking object-oriented design (3)
============================================================

_Overview_

* Preliminaries
    * Notes and news
    * Upcoming work
    * Extra credit
    * Questions
* Managing dependencies - An overview
* Code reading and writing
* Work time

Preliminaries
-------------

### News / Etc.

* Mentor sessions next week Tu 8-9 and Thu 7-9.
* Beware!  Friday the 13th happens on a Friday this month.
* Concern: Mis-gendering our book's author.
* Concern: How groups are approaching Wednesdays. 
    * The goal is a substantial amount of time to work *together*
      along with *room for advice*
    * Alternatively, to meet *together* with your client or your
      mentor.
    * Some of you are doing some very different things.

### Upcoming work

* Those who did not turn in the reading journal on Chapter 3 should
  do the code challenge at the bottom of [today's 
  eboard](../eboards/eboard30).
* Reading for Friday: [Chapter 4 of _Practical Object-Oriented
  Design in Ruby_](../readings/poodr04)
* [Paper](../assignments/paper): Write your own case study, based on a 
  real case.  Due 10:30 p.m. on Sunday, 15 April 2018.
* Normal Friday reports due today.
* Start of sprint presentations on Monday!  Yay!  Another sprint!

### Good things to do (Academic/Artistic)

* Student research symposium next week.

### Good things to do (Peer)

* Drag show
* RS presents VR research Tuesday at 12 pm in JRC 101.
* WGMC 6pm on Thursdays.
* Smith Show.

### Good things to do (Misc)

* Men's Tennis, April 14&15, 21, and 22.
* Track and Field Dick Young Invitational April 21

### Friday PSA

* You are thoughtful, intelligent, caring people.
* Consider in advance what is appropriate for you this weekend.
    * Excess is unlikely to be approriate.
* Consent is necessary.  But it may not suffice.  Consider advance
  discussion/planning.

### Questions

Discussion of Chapter 3 - Managing Dependencies
-----------------------------------------------

_What are some big picture ideas from Chapter 3 of Metz?_

* Good program design isolates changes.
    * Lets you try new things.
    * Means that when you do decide to make a change, its effects
      have limited scope.
* Although OOD lets us encapsulate things in objects and therefore
  seemingly isolate change, objects can be tightly coupled with a
  change in one affecting others.
    * The names of other classes.
    * The meanings, types, and order of parameters.
      `sam = new Professor("Rebelsky","Samuel","Computer Science",0);`
* Good object-oriented design decouples tightly coupled objects (or,
  more generally, keeps coupling loose in the first place).
* Also: You can flip dependencies.  Have the thing that changes more
  frequently depend on the thing that changes less frequently.
* Two key approaches
    * Use interfaces rather than classes (lets us decouple from any
      underlying assumptions about the class name or constructors)
    * Use hashes, rather than ordered parameters, in constructors
      (and some procedure calls)

_Using hashes_

```
sam = Professor.new(:fname => "Samuel",
                    :lname => "Rebelsky",
                    :dept => "Computer Science",
                    :gpa => 0);
sam = Professor.new(lname: "Rebelsky",
                    fname: "Samuel",
                    gpa: 0,
                    dept: "Computer Science");
```

Note, this is required, in part, because Ruby only gives us one
constructor/initializer.  It turns out to be useful in languages
like Java in which you can have multiple constructors with different
signatures.

Java still expects that you get them in right order.

But Java lets you choose different sets of values to initialize
the object with.

E.g.,

```
public class Rational
{
  public Rational(int numerator, int denominator)
  {
  } //

  public Rational(real value)
  {
  } //
} // class Rational
```

Ruby can't do this without a hash

```
class Rational
  def initialize(params)
    if (params[:value])
      # instructions for dealing with a real
    else if (params[:numerator] && params[:denominator])
      # instructions for dealing with that case
    else
      # ...
    end
  end
end
```

One of the reasons Sam likes this approach.

```
public class Vector2D
{
  public Vector2D(real x, real y)
  {
    // ...
  } // Vector2D(real,real)

  public Vector2D(real radius, real theta, int ignoreme)
  {
    ...
  } // Vector2D(real, real)
} // class Vector2D
```

A hash (in Ruby) would have helped

```
class Vector2D
  attr_reader :x, :y
  def initialize(params)
    @x = params[:x]
    @y = params[:y]
  end
end

# Damn.  I should have used polar coordinates.

class Vector2D
  attr_reader :theta, :radius
  def initialize(params)
    if (params[:x] && params[:y])
      x = params[:x]
      y = params[:y]
      @theta = (0 == x) ? 0 : tan (y/x)
      @radius = sqrt(x*x + y*y)
    elsif (params[:theta] && params[:radius])
      @theta = params[:theta]
      @radius = params[:radius]
    else
      # ...
    end
  end

  # Damn!  I shouldn't have made the fields public
  def x
    @radius * cos(@theta)
  end

  def y
    @radius * sin(@theta)
  end
end
```

Conclusion: The hash as parameter lets you write code that is more
adaptable to change.  And that's a good goal.  Plus, the procedure
call is more readable.

Danger: Hashes are more expensive than standard parameters.
Sam generally reserves this technique for constructors.

_What is the student missing in the following description of dependency injection?_

When a class A knows the name of another class B, we say that there is
a dependency. So if the name of class B now changes to C, we will have
to go to back to the code of class A and change the occurences of B to
C. However, we could pass the object of class B as an argument. Then
we do not need to change our code of class A whenever the name of class
B changes.

* Our concern is less that class names change than that ...
* We realize that A would would work just as as well with C as with
  B.  How do we make it easy to switch?
* Another issue: While C may not switch, the constructor to C may switch.
* A no longer stores objects of class B; rather, A stores objects of
  Interface I which class B happens to implement.
    * In Metz's example, we say that a wheel is something that provides
      a `diameter` method.
    * Because Ruby is duck typed, interfaces are generally implicit
      rather than explicit.

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

_What is dependency injection?_

Rather than depending on an object you create explicitly within your
class, you take the object as a parameter.  That eliminates a 
dependency from your code, but does move some of the dependency to
your caller.

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
  end

  def wheel
    @wheel ||= Wheel.new(rim, tire)
  end

  # ...
end
```

* Issue one: This constrains the dependency to one place (the
  wheel method)
* Issue two: Object construction may be expensive.  Delay the
  construction as long as possible.  This code will only call 
  `Wheel.new` when either `gear_inches` or `wheel` is called.
  Lazy construction.

```
class Gear
  attr_reader :chainring, :cog, :rim, :tire 
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog       = cog
    @rim       = rim
    @tire      = tire
    @wheel     = nil
  end

  def gear_inches
    ratio * wheel.diameter
    # Old code: ratio * Wheel.new(rim,tire).diameter
  end

  def wheel
    # @wheel ||= Wheel.new(rim, tire)
    if (nil == @wheel)
      @wheel = Wheel.new(rim, tire)
    end
    @wheel
  end

  # ...
end
```

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
```

* Problem: We don't want to change our Gear class.  We're not sure
  why someone made that bad programming decision (probably they
  did not read POODR first).  But there's code that depends on it.
* Solution: New clients can call the `GearWrapper.gear(...)` method
  with a hash rather than the `Gear.new(...)` method with three parameters
  in the right order.
* Plus: We are able to set default values.  If the client does not
  provide the chainring and cog, we can assume them.  That means that
  the client can focus on wheels.
* Note that we've already dealt with the primary dependency injection
  issue of wheels.  We're just making it better.
* Remember this as a way to deal with legacy code.

_A coding challenge for those who did not turn in the journal: Rewrite the
following code so that (a) `Wheel` objects take a hash as a parameter;
(b) you remove the dependency on `Gear` so that you can different
kinds of objects that are built from chainrings and cogs (perhaps
`EuropeanGear` or some such) and provide a `gear_inches` method; and (c)
`Wheel` objects build the thing that computes `gear_inches` lazily._

```
class Gear
  attr_reader :chainring, :cog
  def initialize(chainring, cog)
    @chainring = chainring
    @cog       = cog
  end

  def gear_inches(diameter)
    ratio * diameter
  end

  def ratio
    chainring / cog.to_f
  end
#  ...
end

class Wheel
  attr_reader :rim, :tire, :gear
  def initialize(rim, tire, chainring, cog)
    @rim       = rim
    @tire      = tire
    @gear      = Gear.new(chainring, cog)
  end

  def diameter
    rim + (tire * 2)
  end

  def gear_inches
    gear.gear_inches(diameter)
  end
#  ...
end
```

Work time
---------


