---
title: Reading
subtitle: Practical object-oriented design in ruby (ch. 3)
link: true
schedule: 2018-04-13
due: 2018-04-12
due-time: 8:00pm Thursday
---
# {{ page.title }}: {{ page.subtitle }}

{% include due.md %}

Read Chapter 3 of _Practical Object-Oriented Design in Ruby_.  

{% include journal.md %}

1. What do you see as Metz's primary points in this chapter?

2. What important points or ideas is Metz illustrating in the
following example?

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

3. Metz advocates a very different approach to parameters (or at least
parameters to the `initialize`) than we've used in the past.  Explain the
approach the Metz advocates.

4. Explain the concept of "dependency injection" in your own words.

---

If you did not turn in the reading journal on time, you should do the
rewrite the following code so that

* (a) `Wheel` objects take a hash as a parameter;
* (b) you remove the dependency on `Gear` so that you can use different
      kinds of objects that (i) are built from chainrings and cogs (perhaps
      `EuropeanGear` or some such) and (ii) provide a `gear_inches` method; and 
* (c) `Wheel` objects build the thing that computes `gear_inches` lazily.

You may assume that there is no other code that depends on `Gear` and
`Wheel`.  (You don't have to support legacy code.)

(In essence, you are showing that you understood the key points from the
reading plus one or two others.)

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


