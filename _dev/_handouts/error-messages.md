---
title: Error messages
summary: Information on the various error messages you may get from DrRacket
section: handouts
section: reference
---
Error messages
==============

Believe it or not, but the error messages that you get from DrRacket
occasionally contain useful information.  (Okay, they always contain
useful information.  It may just be difficult to comprehend the
information.)  Read the messages.  If they make sense, follow up on
the error.  If they don't, check this reference or ask for help (or
both).

Here are some of the more confusing error messages you might receive
and a possible explanation of those error messages.  If you get other
error messages, please send them to <email>rebelsky@grinnell.edu</email>
and your faculty member so that we can add explanations to the list.

Missing gigls
-------------

```
./../opt/racket/collects/mred/private/snipfile.rkt:324:2: open-input-file: 
cannot open input file
path: /glimmer/lib/gigls/unsafe.rkt
  system error: No such file or directory; errno=2
```

Although we do our best to have gigls installed on every computer in
MathLAN, some get missed (e.g., because they were off when we attempted
to install gigls).  Email the name of the computer to
<email>rebelsky@grinnell.edu</email> and move to another computer.

Bad Version
-----------

```
../../usr/share/racket/collects/errortrace/errortrace-lib.rkt:399:2:
load-extension: bad version 5.3.6@3m (not 5.2.1@3m) from
"/glimmer/lib/louDBus/compiled/native/x86_64-linux/3m/loudbus.so"
```

We have two versions of DrRacket installed on the computers.  This
message suggests that you are running the older version.  Make sure
that your launcher is configured to use the newer version, which is
in `/opt/racket/bin/drracket`.  If you don't know how to
configure your launcher, get help from a tutor, mentor, faculty
member, or perhaps even just an upper-level CS student.
(Instructions are in the [Linux Lab]({{ site.baseurl | append: '/labs/linux-lab' }}.)

Chances are good that the MathLAN computer you are using tried to be
helpful by remembering that you were running DrRacket the last time
you logged out. Unfortunately, it re-launches the older (default)
version of DrRacket when you log back in. It is highly likely that
exiting DrRacket and restarting it using your panel launcher will
solve the problem. (For one time anyhow; there's no fix to the
general problem of the machine trying to be helpful and failing.)

Unbound Identifiers
-------------------

```
drawing-XXX: unbound identifier in module in: drawing-XXX
```

If the unbound identifier is one of the MediaScheme/gigls procedures,
you probably forgotten to include `(require gigls/unsafe)`
in the top of the definitions pane.  If the unbound identifier is not
one of those procedures, it just means that you forgot to define it.
(When we use `define` to associate a name with a value,
Scheme says that the name (identifier) is "bound".)

Can't Render Drawings
---------------------

```
. . ../../rebelsky/share/lib/gigls/drawings.rkt:1130:7: 
 drawing-render!: Drawing does not fit within image bounds (image-width: 275 
 image-height: 184 drawing-left: 9453.0 drawing-top: 4231.875 drawing-right: 
 9591.0 drawing-bottom: 4324.375)
```

You will get an error message like this if you use
`drawing-&gt;image` or `drawing-render!`
and the drawing you are using is outside the bounds of the of the
corresponding image.  In this particular instance, since the image is
275 wide, the left edge of the drawing has to be smaller than 275.
It's not.  It's 9453, which is much larger.

Not a procedure
---------------

```
application: not a procedure;
 expected a procedure that can be applied to arguments
 given: 3
   arguments...:
```

This error message suggests that you have something other than
a procedure immediately after an open parenthesis.  (Many of
us are tempted to parenthesize parameters and such.  Scheme
gets upset when you do that.)

GDBus error
-----------

This group of errors include the term `GDBus.Error` and
look something like the following.

```
. . gimp_drawable_get_pixel: call failed because 
GDBus.Error:org.gtk.GDBus.UnmappedGError.Quark._g_2dio_2derror_2dquark.Code13:
call to gimp-drawable-get-pixel failed with an execution error
```

or

```
./../lib/gigls/tile.rkt:73:6: tile_stream_new: call failed because 
GDBus.Error:org.gtk.GDBus.UnmappedGError.Quark._g_2dio_2derror_2dquark.Code13:
could not create stream
```

These errors usually indicate that something has gone wrong between
GIMP and DrRacket.  Save your work, quit both programs, restart both
programs, and try again.  If that fails, try contacting your instructor.
Include your procedures, the input that seems to have led to the error,
and anything else that might be of use.

