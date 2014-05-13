=begin

Exception < Object

(from ~/.rdoc)
------------------------------------------------------------------------------
Descendants of class Exception are used to communicate between
raise methods and rescue statements in begin/end blocks.
Exception objects carry information about the exception---its type
(the exception's class name), an optional descriptive string, and optional
traceback information. Programs may subclass Exception, or more
typically StandardError to provide custom classes and add additional
information.

Exception serialization/deserialization
------------------------------------------------------------------------------
Class methods:

  exception, json_create, new

Instance methods:

  ==, as_json, backtrace, exception, inspect, message, set_backtrace, to_json,
  to_s

=end