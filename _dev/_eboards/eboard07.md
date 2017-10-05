---
title: Eboard 07  Rethinking OOD (1)
number: 07
section: eboards
held: 2017-09-14
---
CSC 322.01, Class 07:  Rethinking OOD (1)
=========================================

_Overview_

* Preliminaries
    * Notes and news
    * Upcoming work
    * Extra credit
    * Questions
* Big picture
* Single responsibility principle
* Managing dependencies, internally
* Managing dependencies, externally

### News / Etc.

* Please let me know when you notice problems on the Web site.  I think 
  I've fixed most of them.
* When are you meeting with your partner?
    * Advocates: Now
    * PALS: Yesterday!
    * Local foods: Waiting to hear back from client
    * GPCF: Next Tuesday afternoon ("we can walk")
    * Heartland: Waiting to hear from partner
    * Mayflower: Figuring out who to work with.

### Upcoming Work

* Reading: The rest of POODR.

### Good things to do

_Note: I do not do extra credit in two-credit classes._

#### Academic

* CS Extras today
* CS Table Tuesday (tbd)

#### Peer

* CS Extras today
* Elephantitis this weekend (Saturday morning at HS and afternoon at MS)
  (Sunday at HS)

### Questions

Big picture
-----------

Three core approaches of object-oriented design

* Encapsulation
    * Group related things together (data/state and the methods that
      manipulate those data/that state)
    * Information hiding: The client needs to know *what* we do, but
      not how.
* Inheritance
    * We can design new classes or objects based on already existing
      classes or objects.
    * Class-based inheritance: When a class inherits from another class,
      it gets the properties and methods of that other class.
        * You can add new properties and methods
        * You can change methods (override)
    * Object-based inheritance: When a class inherits from another object,
      it gets the properties and methods of that other object.
        * You can add new properties and methods
        * You can change methods (override)
    * Object-based inheritance is not possible in Java, but it's pretty
      easy in Ruby (and many other object-oriented languages).
    * Note: This assumes that we can add/change methods in individual
      objects, as well as the class as a whole.
* Polymorphism
    * Subtype polymorphism - related to inheritance and interfaces.
      If something is of "this class" (or a subclass or an implementing
      class), we can do *this* with it.
        * If something implements the Addable interface, we can
          write double(x) as x.add(x)
    * Parametric polymorphism
       * We can substitute in this value in the definition, such as
         ListOf<Stuff>

Why OOD?

* Makes it easier to reuse code.
    * Inheritance: No need to rewrite identical code.
    * Polymorphism: No need to rewrite identical code.
    * Encapsultation: Objects seem eaasier to use than code that is
      not clearly tied together.
* Can help you organize your code.
* Seems logical.
* It's popular.  Go with the crowd.
* Good encapsulation limits the effects of change.
* "Plan for the future"
* Historical "evidence" suggests that it leads t more reliable programs
  and easier development.

Going beyond the core approaches

* Design patterns
    * MVC
    * Factory
* Sets of design principles
    * DRY
    * Limit dependencies / light coupling vs tight coupling
    * Single purpose principle (grep not word)
    * When you violate these principles, you refactor your code

Book examples, selected
-----------------------

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

* Does not verify preconditions that chainring and cog are positive
  real numbers (or something similar)
    * We trust our client (alternately ... if our client does not
      use the code correctly, it's their fault)
* Not documented carefully.
    * Someone working in the domain knows what the names represent
    * We might use @radius_of_chainring and @radius_of_cog
* What happens if we change how we are representing things?
    * Design principle: Looking at fields inside a class may be as bad
      as looking at them outside a class, so use *accessor methods* rather
      than fields.

Our code should pay attention to the wheel size and the tire size,
since that tells us something about speed and effort.

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
    rim + (tire * 2) 
  end
end
```

We've added capabilities.  Yay!  But ...

* Why do we have information about a wheel in a class about gears?
    * We should have a separate wheel object.
* We've just broken every other program that uses our Gear object, since
  the initializer is different.
    * In Java, create two constructors
    * In Ruby, use default values for parameters

```
  def gear_inches
    # tire goes around rim twice for diameter
    ratio * (rim + (tire * 2))
  end
```

```
  def gear_inches
    ratio * diameter
  end
  
  def diameter
    (rim + (tire * 2))
  end
```
