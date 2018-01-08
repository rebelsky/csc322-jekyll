---
title: Eboard 23  Work time (and OOD)
number: 23
section: eboards
held: 2017-11-16
---
CSC 322.01, Class 23:  Work time (and OOD)
==========================================

_Overview_

* Preliminaries
    * Notes and news
    * Upcoming work
    * Extra credit
    * Questions
* Review of inheritance
* Work time

### News / Etc.

* Remember the project reports are due EVERY FRIDAY at 5 p.m.
    * Make sure to include all the alumni, me, KY, GB, and MG 
      in the recipient list
* Please finish registering if you have not done so already.

### Upcoming Work

_Please put your assignments in your planners or equivalent._

* **For Tuesday: Read Chapter 7 of POODR.**
* Regular work on projects.
* Weekly Project Report, TOMORROW at 5pm
    * What did you accomplish this past week?
    * What do you hope to accomplish in the coming week?
    * What obstacles stand in your way?
    * What resources do you need to help you accomplish your work?
* Presentations Tuesday
    * What you accomplished (and did not accomplish)
    * Velocity
    * Demo
    * Plans
    * Q&A

### Good things to do

_Note: I do not do extra credit in two-credit classes._

* Convocation TODAY!
* Students of voice recitals Friday at 4:15 and 7:30 p.m.
* CS Extras Tuesday

### Questions

Review of inheritance
---------------------

_What new about inheritance did you take from chapter 6._

* Different perspective on inheritance.  Sam thinks of inheritance as
  "code and fields get copied to subclass".  Metz thinks of inheritance
  as "messages are automatically delegated to superclass".
* Reinforcement of "hash as parameter".  If the hash is a parameter to
  the constuctor, it's much easier for the subclass to grab only what it
  needs and then to pass everything else to the superclass.
    * Probably not as good an idea in Java, since it's hard to just
      build a hash on the fly.
* Value of self calls which we assume will be overridden.
* Strategy for refactoring when you realize that you need a new superclass.
  (E.g., I'm building B.  B's look like Eights.  But there are some differences
  and neither is naturally a subclass of the other.)
    * Put nothing in the superclass.
    * Look for things that are common to the two subclasses and move them
      up.
    * Be cautious about promoting fields/methods to superclass.

Useful Metz example

```
class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(args={})
    @size       = args[:size]
    @chain      = args[:chain]      || default_chain
    @tire_size  = args[:tire_size]  || default_tire_size
    post_initialize(args)
  end

  def post_initialize(args)
    nil
  end

  def spares
    { tire_size: tire_size,
      chain:     chain}.merge(local_spares)
  end

  def local_spares
    {}
  end

  def default_chain
    '10-speed'
  end

  def default_tire_size
    raise NotImplementedError
  end
end

class RoadBike < Bicycle
  attr_reader :tape_color

  def post_initialize(args)
    @tape_color = args[:tape_color]
  end

  def local_spares
    {tape_color: tape_color}
  end

  def default_tire_size
    '23'
  end
end

road_bike = RoadBike.new(
              size:       'M',
              tire_size:  25,
              tape_color: 'red' )
road_bike.spares
# -> {:tire_size   => 25,
#     :chain       => "10-speed",
#     :tape_color  => "red"}
```

### Continuing Metz

* We will do chapter 7
* And then stop there.
* Next semester, we'll try to do the Metz material earlier.

Work time
---------

