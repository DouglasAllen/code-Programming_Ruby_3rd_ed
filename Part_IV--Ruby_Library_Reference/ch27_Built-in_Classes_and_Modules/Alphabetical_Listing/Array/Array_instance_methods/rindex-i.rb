=begin

Array.rindex

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.rindex(obj)           ->  int or nil
  ary.rindex {|item| block} ->  int or nil
  ary.rindex                ->  an_enumerator

------------------------------------------------------------------------------

Returns the index of the last object in self == to obj.
If a block is given instead of an argument,
returns index of first object for which block is true,
starting from the last object. 
Returns nil if no match is found.
See also Array#index.

If neither block nor argument is given, an enumerator is returned instead.

  a = [ "a", "b", "b", "b", "c" ]
  
  a.rindex("b")        #=> 3
  a.rindex("z")        #=> nil
  a.rindex{|x|x=="b"}  #=> 3

=end