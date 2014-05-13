=begin

Abbrev

(from ruby core)
------------------------------------------------------------------------------
Calculate the set of unique abbreviations for a given set of strings.

      require 'abbrev'
      require 'pp'

      pp Abbrev::abbrev(['ruby', 'rules']).sort

Generates:

      [["rub", "ruby"],
       ["ruby", "ruby"],
       ["rul", "rules"],
       ["rule", "rules"],
       ["rules", "rules"]]

Also adds an abbrev method to class Array.

------------------------------------------------------------------------------
Class methods:

  abbrev

Instance methods:

  abbrev
  
=end