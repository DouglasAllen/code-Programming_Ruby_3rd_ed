=begin

Array.index

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.index(obj)           ->  int or nil
  ary.index {|item| block} ->  int or nil
  ary.index                ->  an_enumerator

------------------------------------------------------------------------------

Returns the index of the first object in self such that the object
is == to obj. If a block is given instead of an argument, returns
index of first object for which block is true. Returns nil if no
match is found.
See also Array#rindex.

If neither block nor argument is given, an enumerator is returned instead.

  a = [ "a", "b", "c" ]
  a.index("b")        #=> 1
  a.index("z")        #=> nil
  a.index{|x|x=="b"}  #=> 1

This is an alias of #find_index.

=end