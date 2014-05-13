=begin

Array#__id__

(from ~/.rdoc)
Implementation from BasicObject
------------------------------------------------------------------------------
  obj.__id__       -> fixnum
  obj.object_id    -> fixnum

------------------------------------------------------------------------------

Returns an integer identifier for obj. The same number will be returned
on all calls to id for a given object, and no two active objects will
share an id. Object#object_id is a different concept from
the :name notation, which returns the symbol id of name. Replaces
the deprecated Object#id.

=end
