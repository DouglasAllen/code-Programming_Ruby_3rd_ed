=begin

Class < Module

(from ~/.rdoc)
------------------------------------------------------------------------------

Classes in Ruby are first-class objects---each is an instance of class
Class.

When a new class is created (typically using class Name ...end), an
object of type Class is created and assigned to a global constant
(Name in this case). When Name.new is called to create a new
object, the new method in Class is run by default. This can be
demonstrated by overriding new in Class:

  class Class
     alias oldNew  new
     def new(*args)
       print "Creating a new ", self.name, "\n"
       oldNew(*args)
     end
   end

   class Name
   end

   n = Name.new

produces:

  Creating a new Name

Classes, modules, and objects are interrelated. In the diagram that follows,
the vertical arrows represent inheritance, and the parentheses meta-classes.
All meta classes are instances of the class `Class'.
                           +---------+             +-...
                           |         |             |
           BasicObject-----|-->(BasicObject)-------|-...
               ^           |         ^             |
               |           |         |             |
            Object---------|----->(Object)---------|-...
               ^           |         ^             |
               |           |         |             |
               +-------+   |         +--------+    |
               |       |   |         |        |    |
               |    Module-|---------|--->(Module)-|-...
               |       ^   |         |        ^    |
               |       |   |         |        |    |
               |     Class-|---------|---->(Class)-|-...
               |       ^   |         |        ^    |
               |       +---+         |        +----+
               |                     |
  obj--->OtherClass---------->(OtherClass)-----------...


Extends any Class to include json_creatable? method.
------------------------------------------------------------------------------
Class methods:

  new

Instance methods:

  allocate, json_creatable?, new, superclass
  
=end