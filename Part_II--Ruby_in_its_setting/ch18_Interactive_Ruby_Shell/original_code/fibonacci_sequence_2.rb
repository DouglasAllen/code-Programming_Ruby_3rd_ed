#---
# Excerpted from "Programming Ruby 1.9",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
def fibonacci_sequence
  Enumerator.new do |generator|
    i1, i2 = 1, 1
    loop do   
      generator.yield i1
      i1, i2 = i2, i1+i2
    end
  end
end

# This module encapsulates functionality related to the
# generation of Fibonacci sequences.
##
# Copyright (c) 2004 Dave Thomas, The Pragmatic Programmers, LLC.
# Licensed under the same terms as Ruby. No warranty is provided.
module Fibonacci
  # Calculate the first _count_ Fibonacci numbers, starting with 1,1.
  #
  # :callseq:
  # Fibonacci.sequence(count) > array
  # Fibonacci.sequence(count) {|val| ... } > nil
  #
  # If a block is given, supply successive values to the block and
  # return +nil+, otherwise return all values as an array.
  def Fibonacci.sequence(count, &block)
    result, block = setup_optional_block(block)
    generate do |val|
      break if count <= 0
      count -= 1
      block[val]
    end
    result
  end
  
  # Calculate the Fibonacci numbers up to and including _max_.
  #
  # :callseq:
  # Fibonacci.upto(max) > array
  # Fibonacci.upto(max) {|val| ... } > nil
  #
  # If a block is given, supply successive values to the
  # block and return +nil+, otherwise return all values as an array.
  def Fibonacci.upto(max, &block)
    result, block = setup_optional_block(block)
    generate do |val|
      break if val > max
      block[val]
    end
    result
  end
  
  private
  # Yield a sequence of Fibonacci numbers to a block.
  def Fibonacci.generate
    f1, f2 = 1, 1
    loop do
      yield f1
      f1, f2 = f2, f1+f2
    end
  end
  
  # If a block parameter is given, use it, otherwise accumulate into an
  # array. Return the result value and the block to use.
  def Fibonacci.setup_optional_block(block)
    if block.nil?
      [ result = [], lambda {|val| result << val } ]
    else
      [ nil, block ]
    end
  end
end

