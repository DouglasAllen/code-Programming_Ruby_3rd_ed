#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  def factory(klass, *args)
    klass.new(*args)
  end

  p factory(String, "Hello")
  p factory(Dir,    ".")

  flag = true
  p (flag ? Array : Hash)[1, 2, 3, 4]
  flag = false
  p (flag ? Array : Hash)[1, 2, 3, 4]
