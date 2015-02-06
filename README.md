# jackdaw

Jackdaw is a bare-bones template of a Kawa project that builds a
"Hello World" application using JavaFX.

You don't have to use JavaFX; just replace the JavaFX code in
src/jackdaw.scm with whatever you want.

I made jackdaw because I've been using Kawa quite a bit lately and I
wanted to have a skeleton project handy to make setup quicker and
easier. Maybe it'll serve the same way for others, as well.

Jackdaw is quite simple: it's a single-file JavaFX application written
in Scheme, relying on the Kawa compiler to turn it into bytecode for
the Java Virtual Machine. It includes the Kawa compiler needed to
build it, along with an Ant build file and a couple of utilities that
make it easier to work with Kawa and the Jackdaw project. Jackdaw
should contain everything you need to build a working application in
Scheme and run it on the Java Virtual Machine, except for the JVM
itself and whatever documentation you may need.

The Kawa documentation is here:

  http://www.gnu.org/software/kawa/index.html

Documentation for Ant is here:

  http://ant.apache.org/

Documentation for Java is here:

  http://www.oracle.com/technetwork/java/javase/documentation/index.html

You can replace the sample JavaFX code with any Scheme code you
like. Jackdaw assumes that you'll use Emacs for editing and running
Scheme code, and ant to build your application, because those are the
tools that I use, but you should be able to easily adapt it to work
with any development tools that work with Scheme and Java.

Additional Bits

A prebuilt copy of Kawa 2.0 is in the lib folder, but you can easily
get and build it yourself from:

http://www.gnu.org/software/kawa/index.html

The bin directory contains a script that runs kawa.

The emacs directory contains Neil Van Dyke's quack.el, a major mode
for editing and running Scheme. It works well with Kawa.

The homepage for Quack is:

  http://www.neilvandyke.org/quack/

