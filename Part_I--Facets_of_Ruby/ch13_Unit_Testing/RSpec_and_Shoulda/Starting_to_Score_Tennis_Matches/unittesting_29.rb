#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
# $ spec ts_spec.rb
 res = `cd code/bdd/4 && /usr/local/rubybook/bin/spec ts_spec.rb`
 puts res.gsub(%r{/Users/dave/BS2/titles/RUBY3/Book/code/bdd/./}m, '')
