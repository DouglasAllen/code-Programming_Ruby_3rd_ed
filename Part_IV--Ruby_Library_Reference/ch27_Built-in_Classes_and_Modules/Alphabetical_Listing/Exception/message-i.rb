=begin

Exception#message

(from ~/.rdoc)
------------------------------------------------------------------------------
  exception.message   ->  string

------------------------------------------------------------------------------

Returns the result of invoking exception.to_s. Normally this returns the
exception's message or name. By supplying a to_str method, exceptions are
agreeing to be used where Strings are expected.

=end