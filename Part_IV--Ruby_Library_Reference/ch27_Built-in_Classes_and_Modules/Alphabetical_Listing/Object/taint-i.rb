=begin

Object#taint

(from ~/.rdoc)
------------------------------------------------------------------------------
  obj.taint -> obj

------------------------------------------------------------------------------

Marks obj as tainted---if the $SAFE level is set appropriately,
many method calls which might alter the running programs environment will
refuse to accept tainted strings.

=end