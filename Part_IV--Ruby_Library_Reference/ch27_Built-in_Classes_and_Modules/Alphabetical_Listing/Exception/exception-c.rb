=begin

Exception::exception

(from ~/.rdoc)
------------------------------------------------------------------------------
  exc.exception(string)  ->  an_exception or exc

------------------------------------------------------------------------------

With no argument, or if the argument is the same as the receiver, return the
receiver. Otherwise, create a new exception object of the same class as the
receiver, but with amessage equal to string.to_str.

=end