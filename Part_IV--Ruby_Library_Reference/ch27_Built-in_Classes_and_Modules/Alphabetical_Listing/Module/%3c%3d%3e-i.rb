=begin

Module.<=>

(from ~/.rdoc)
------------------------------------------------------------------------------

  mod <=> other_mod   -> -1, 0, +1, or nil

------------------------------------------------------------------------------

Comparison---Returns -1 if mod includes other_mod, 0
if mod is the same as other_mod, and +1 if mod is included
by other_mod. Returns nil if mod has no relationship with
other_mod or if other_mod is not a module.

=end