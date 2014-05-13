=begin

Array < Object

------------------------------------------------------------------------------
Includes:
Enumerable (from ~/.rdoc)

(from ~/.rdoc)
------------------------------------------------------------------------------

Arrays are ordered, integer-indexed collections of any object. Array indexing
starts at 0, as in C or Java.  A negative index is assumed to be relative to
the end of the array---that is, an index of -1 indicates the last element of
the array, -2 is the next to last element in the array, and so on.


------------------------------------------------------------------------------
Class methods:

  [], new, try_convert

Instance methods:

  &, *, +, -, <<, <=>, ==, [], []=, abbrev, assoc, at, clear, collect,
  collect!, combination, compact, compact!, concat, count, cycle, dclone,
  delete, delete_at, delete_if, drop, drop_while, each, each_index, empty?,
  eql?, fetch, fill, find_index, first, flatten, flatten!, frozen?, hash,
  include?, index, initialize_copy, insert, inspect, join, keep_if, last,
  length, map, map!, pack, permutation, pop, pretty_print, pretty_print_cycle,
  product, push, rassoc, reject, reject!, repeated_combination,
  repeated_permutation, replace, reverse, reverse!, reverse_each, rindex,
  rotate, rotate!, sample, select, select!, shelljoin, shift, shuffle,
  shuffle!, size, slice, slice!, sort, sort!, sort_by!, take, take_while,
  to_a, to_ary, to_csv, to_s, transpose, uniq, uniq!, unshift, values_at, zip,
  |

  from ri Array#&
  
  Array#!
  Array#!=
  Array#!~
  Array#&
  Array#*
  Array#+
  Array#-
  Array#<<
  Array#<=>
  Array#==
  Array#===
  Array#=~
  Array#Array
  Array#BigDecimal
  Array#CSV
  Array#Complex
  Array#DelegateClass
  Array#Digest
  Array#Float
  Array#Integer
  Array#Pathname
  Array#Rational
  Array#String
  Array#[]
  Array#[]=
  Array#__callee__
  Array#__id__
  Array#__method__
  Array#__send__
  Array#`
  Array#abbrev
  Array#abort
  Array#all?
  Array#any?
  Array#assoc
  Array#at
  Array#at_exit
  Array#autoload
  Array#autoload?
  Array#binding
  Array#block_given?
  Array#callcc
  Array#caller
  Array#catch
  Array#check_signedness
  Array#check_sizeof
  Array#chmod
  Array#chomp
  Array#chop
  Array#chunk
  Array#class
  Array#clear
  Array#clone
  Array#collect
  Array#collect!
  Array#collect_concat
  Array#combination
  Array#compact
  Array#compact!
  Array#concat
  Array#convertible_int
  Array#count
  Array#cp
  Array#create_header
  Array#create_makefile
  Array#cycle
  Array#dclone
  Array#default_src_encoding
  Array#define_singleton_method
  Array#delete
  Array#delete_at
  Array#delete_if
  Array#depend_rules
  Array#detect
  Array#dir_config
  Array#display
  Array#drop
  Array#drop_while
  Array#dummy_makefile
  Array#dup
  Array#each
  Array#each_cons
  Array#each_entry
  Array#each_index
  Array#each_slice
  Array#each_with_index
  Array#each_with_object
  Array#empty?
  Array#enable_config
  Array#entries
  Array#enum_for
  Array#eql?
  Array#equal?
  Array#eval
  Array#exec
  Array#exit
  Array#exit!
  Array#extend
  Array#fail
  Array#fetch
  Array#fill
  Array#find
  Array#find_all
  Array#find_executable
  Array#find_header
  Array#find_index
  Array#find_library
  Array#find_type
  Array#first
  Array#flat_map
  Array#flatten
  Array#flatten!
  Array#fork
  Array#format
  Array#freeze
  Array#frozen?
  Array#gem
  Array#gem_original_require
  Array#gets
  Array#global_variables
  Array#grep
  Array#group_by
  Array#gsub
  Array#hash
  Array#have_const
  Array#have_framework
  Array#have_func
  Array#have_header
  Array#have_library
  Array#have_macro
  Array#have_struct_member
  Array#have_type
  Array#have_var
  Array#help
  Array#httpd
  Array#include?
  Array#index
  Array#initialize_copy
  Array#inject
  Array#insert
  Array#inspect
  Array#install
  Array#instance_eval
  Array#instance_exec
  Array#instance_of?
  Array#instance_variable_defined?
  Array#instance_variable_get
  Array#instance_variable_set
  Array#instance_variables
  Array#is_a?
  Array#iterator?
  Array#join
  Array#keep_if
  Array#kind_of?
  Array#lambda
  Array#last
  Array#length
  Array#ln
  Array#load
  Array#local_variables
  Array#loop
  Array#map
  Array#map!
  Array#max
  Array#max_by
  Array#member?
  Array#method
  Array#min
  Array#min_by
  Array#minmax
  Array#minmax_by
  Array#mkdir
  Array#mkmf
  Array#must_be
  Array#must_be_empty
  Array#must_be_instance_of
  Array#must_be_kind_of
  Array#must_be_nil
  Array#must_be_same_as
  Array#must_be_silent
  Array#must_be_within_delta
  Array#must_be_within_epsilon
  Array#must_equal
  Array#must_include
  Array#must_match
  Array#must_output
  Array#must_raise
  Array#must_respond_to
  Array#must_send
  Array#must_throw
  Array#mv
  Array#nil?
  Array#none?
  Array#object_id
  Array#one?
  Array#p
  Array#pack
  Array#partition
  Array#permutation
  Array#pop
  Array#pp
  Array#pretty_inspect
  Array#pretty_print
  Array#pretty_print_cycle
  Array#pretty_print_inspect
  Array#pretty_print_instance_variables
  Array#print
  Array#printf
  Array#proc
  Array#product
  Array#psych_to_yaml
  Array#psych_y
  Array#public_method
  Array#public_send
  Array#push
  Array#putc
  Array#puts
  Array#raise
  Array#rand
  Array#rassoc
  Array#readline
  Array#readlines
  Array#reduce
  Array#reject
  Array#reject!
  Array#repeated_combination
  Array#repeated_permutation
  Array#replace
  Array#require_relative
  Array#respond_to?
  Array#respond_to_missing?
  Array#reverse
  Array#reverse!
  Array#reverse_each
  Array#rindex
  Array#rm
  Array#rmdir
  Array#rotate
  Array#rotate!
  Array#sample
  Array#scanf
  Array#select
  Array#select!
  Array#send
  Array#set_trace_func
  Array#setup
  Array#shelljoin
  Array#shift
  Array#shuffle
  Array#shuffle!
  Array#singleton_class
  Array#singleton_methods
  Array#size
  Array#sleep
  Array#slice
  Array#slice!
  Array#slice_before
  Array#sort
  Array#sort!
  Array#sort_by
  Array#sort_by!
  Array#spawn
  Array#sprintf
  Array#srand
  Array#sub
  Array#syscall
  Array#sysread
  Array#system
  Array#taint
  Array#tainted?
  Array#take
  Array#take_while
  Array#tap
  Array#test
  Array#throw
  Array#timeout
  Array#to_a
  Array#to_ary
  Array#to_csv
  Array#to_enum
  Array#to_s
  Array#to_set
  Array#to_yaml
  Array#touch
  Array#trace_var
  Array#transpose
  Array#trap
  Array#trust
  Array#try_const
  Array#try_type
  Array#uniq
  Array#uniq!
  Array#unshift
  Array#untaint
  Array#untrace_var
  Array#untrust
  Array#untrusted?
  Array#values_at
  Array#wait_writable
  Array#warn
  Array#with_config
  Array#wont_be
  Array#wont_be_close_to
  Array#wont_be_empty
  Array#wont_be_instance_of
  Array#wont_be_kind_of
  Array#wont_be_nil
  Array#wont_be_same_as
  Array#wont_be_within_delta
  Array#wont_be_within_epsilon
  Array#wont_equal
  Array#wont_include
  Array#wont_match
  Array#wont_respond_to
  Array#xmp
  Array#zip
  Array#|

=end

system "ri Array"