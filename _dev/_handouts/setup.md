---
---
Setting up the CSC 151 environment
==================================

* If you follow along with the normal class schedule, you
should set up the environment by doing the labs.  You will install 
standard programs in <ulink url="../labs/linux-lab.html">the
introductory Linux lab</ulink>.  You will set up some custom libraries
in <ulink
url="../labs/drawings-lab.html">the lab on drawings as values</ulink>
(and be reminded of how to do so in some subsequent labs).  This document
provides a bit more background and a bit more detail.*

The short version
-----------------

* If you don't have them already, create taskbar icons for GIMP and 
  DrDracket by dragging them from the Application menu to the task bar.
* Open a terminal window.
* Type `/home/rebelsky/bin/csc151-setup`
* Close your terminal window

Background
----------

CSC 151 uses two "off the shelf" programs, the GNU Image Manipulation
Program (GIMP) and DrRacket.  It also uses some libraries GIMP and
DrRacket to allow the two programs to communicate with each other.
(Both the programs and the libraries also rely on a host of standard
Linux software installed in the MathLAN.)  Hence, to configure your
MathLAN account to work in CSC 151, you should install icons for
GIMP and DrRacket if you don't have them already.  You will also
need to tell each application where to find the libraries.  You'll
also need to know how to tell the applications to communicate.

Installing icons
----------------

To install an icon, you simply need to click and drag it from the
applictions menu (in the lower-left-hand corner of your screen)
into the task bar (at the bottom of your screen).  GIMP is in the
<guimenu>Graphics</guimenu> submenu.  DrRacket is in the the
<guimenu>Development</guimenu> submenu.

GIMP plugins
------------

*You can just type `/home/rebelsky/bin/csc151-setup` to install
these plugins.*

GIMP allows programmers (and users) to extend it using small programs
called "plugins".  We've written plugins that allow GIMP to communicate
over DBus and to add a few more features.  Many GIMP plugins are
installed in a common system area.  However, we don't have permissions
to install them there, and we anticipate updating the plugins.
Hence, we have you install the plugins in your own account.  

* `gimp-dbus` permits the GIMP to communicate over DBus.
* `ggimp-irgb-components` and `ggimp-irgb-new`
  help GIMP deal with an integer RGB representation that's faster for
  DrRacket to process.
* `ggimp-rgb-list` and `ggimp-rgb-parse` provide
  mechanisms for getting color names and converting color names to
  integer RGB representation.

There are a variety of ways to install personal GIMP plugins, but
all of them put the plugin in `/home/*username*/.gimp-2.8/plug-ins`.
Since we may be updating these plugins, we have you install "soft
links"

First, we make sure that the directory exists.

<pre>
<prompt>$</prompt> <userinput>mkdir -P /home/*user*/.gimp-2.8/plug-ins</userinput>
</re>

Next, we create soft links for each of the plugins.

<pre>
<prompt>$</prompt> <userinput>ln -s /glimmer/share/gimp/plugins/*plugin* /home/*user*/.gimp-2.8/plug-ins</userinput>
</re>

By the way, if you want to see the source code to these plugins,
it lives on github at <https://github.com/GlimmerLabs/gimp-dbus>.

Installing Racket libraries
---------------------------

*You can just type `/home/rebelsky/bin/csc151-setup` to install
these libraries.*

We use two libraries for Racket in CSC 151.  The *louDBus* library
allows Racket to communicate with a variety of other programs using
the DBus protocol.  The Glimmer Improved GIMP Library for Scripting
(or *gigls*) adds specific resources for communicating with GIMP
and making it easier to program GIMP.

On most MathLAN workstations, louDBus is installed in
`/glimmer/lib/louDBus` and gigls is installed in `/glimmer/lib/gigls`.
(If they are not installed, you should let us know ASAP.)

To tell Racket where to look for libraries, you use the `raco link`
command.  Hence, you could type the following (without the dollar
sign prompts).

<pre>
<prompt>$</prompt> <userinput>raco link /glimmer/lib/louDBus</userinput>
<prompt>$</prompt> <userinput>raco link /glimmer/lib/gigls</userinput>
</re>

But most people will find it easier to just use the script we've
written.

By the way, if you want to see the source code to these libraries,
it lives on github at <https://github.com/GlimmerLabs/louDBus>
and <http://github.com/GlimmerLabs/gigls>.

Choosing the DrRacket Language
------------------------------

It turns out that DrRacket can support a variety of programming
languages (most of them variants of Scheme).  We'd like to configure
DrRacket so it's easy for us to tell it what language to use.
In the <guimenu>Language</guimenu> menu, select <guimenuitem>Choose
Language...</guimenuitem>.  In the dialog box that appears, click on
<guilabel>Use the language declared in the source</guilabel>.  Then
click <guibutton>Ok</guibutton>.  Finally, click <guibutton>Run</guibutton>.
That should be it - you're ready to go.

