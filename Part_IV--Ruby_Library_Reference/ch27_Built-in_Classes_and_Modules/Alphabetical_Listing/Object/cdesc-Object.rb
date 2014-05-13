=begin

Object < BasicObject

------------------------------------------------------------------------------
Includes:
(from ~/.rdoc)
  Kernel

(from ~/.rdoc)
------------------------------------------------------------------------------

Object is the root of Ruby's class hierarchy.  Its methods are available to all
classes unless explicitly overridden.

Object mixes in the Kernel module, making the built-in kernel
functions globally accessible. Although the instance methods of Object are
defined by the Kernel module, we have chosen to document them here for clarity.

In the descriptions of Object's methods, the parameter symbol refers to
a symbol, which is either a quoted string or a Symbol (such as :name).


------------------------------------------------------------------------------
Constants:

ARGF:
  ARGF is a stream designed for use in scripts that process files givenas
  command-line arguments or passed in via STDIN.

  See ARGF (the class) for more details.

ARGV:
  ARGV contains the command line arguments used to run ruby with thefirst
  value containing the name of the executable.

  A library like OptionParser can be used to process command-linearguments.


DATA:
  DATA is a File that contains the data section of the executed file.To create
  a data section use __END__:

    $ cat t.rb
    puts DATA.gets
    __END__
    hello world!

    $ ruby t.rb
    hello world!

ENV:
  ENV is a Hash-like accessor for environment variables.

  See ENV (the class) for more details.

FALSE:
  An alias of false

NIL:
  An alias of nil

RUBY_COPYRIGHT:
  The copyright string for ruby

RUBY_DESCRIPTION:
  The full ruby version string, like ruby -v prints'

RUBY_ENGINE:
  The engine or interpreter this ruby uses.

RUBY_PATCHLEVEL:
  The patchlevel for this ruby.  If this is a development build of rubythe
  patchlevel will be -1

RUBY_PLATFORM:
  The platform for this ruby

RUBY_RELEASE_DATE:
  The date this ruby was released

RUBY_REVISION:
  The SVN revision for this ruby.

RUBY_VERSION:
  The running version of ruby


SCRIPT_LINES__:
  When a Hash is assigned to SCRIPT_LINES__ the contents of files
  loadedafter the assignment will be added as an Array of lines with the
  filename as the key.


STDERR:
  Holds the original stderr


STDIN:
  Holds the original stdin


STDOUT:
  Holds the original stdout


TOPLEVEL_BINDING:
  The Binding of the top level scope

TRUE:
  An alias of true


Instance methods:

  !~, <=>, ===, =~,
  class, clone, 
  define_singleton_method, display, dup, 
  enum_for, eql?, extend, 
  freeze, frozen?, 
  hash, 
  inspect, instance_of?, instance_variable_defined?, instance_variable_get, instance_variable_set, instance_variables, is_a?, 
  kind_of?, 
  method, methods, 
  nil?,
  object_id, 
  private_methods, protected_methods, public_method, public_methods, public_send, 
  respond_to?, respond_to_missing?, 
  send, singleton_class, singleton_methods,
  taint, tainted?, tap, to_enum, to_s, trust, 
  untaint, untrust, untrusted?

  
  ri Object#&
  
  Object#!
  Object#!=
  Object#!~
  Object#<=>
  Object#==
  Object#===
  Object#=~
  Object#Array
  Object#BigDecimal
  Object#CSV
  Object#Complex
  Object#DelegateClass
  Object#Digest
  Object#Float
  Object#Integer
  Object#Pathname
  Object#Rational
  Object#String
  Object#__callee__
  Object#__id__
  Object#__method__
  Object#__send__
  Object#`
  Object#abort
  Object#at_exit
  Object#autoload
  Object#autoload?
  Object#binding
  Object#block_given?
  Object#callcc
  Object#caller
  Object#catch
  Object#check_signedness
  Object#check_sizeof
  Object#chmod
  Object#chomp
  Object#chop
  Object#class
  Object#clone
  Object#convertible_int
  Object#cp
  Object#create_header
  Object#create_makefile
  Object#dclone
  Object#default_src_encoding
  Object#define_singleton_method
  Object#depend_rules
  Object#dir_config
  Object#display
  Object#dummy_makefile
  Object#dup
  Object#enable_config
  Object#enum_for
  Object#eql?
  Object#equal?
  Object#eval
  Object#exec
  Object#exit
  Object#exit!
  Object#extend
  Object#fail
  Object#find_executable
  Object#find_header
  Object#find_library
  Object#find_type
  Object#fork
  Object#format
  Object#freeze
  Object#frozen?
  Object#gem
  Object#gem_original_require
  Object#gets
  Object#global_variables
  Object#gsub
  Object#hash
  Object#have_const
  Object#have_framework
  Object#have_func
  Object#have_header
  Object#have_library
  Object#have_macro
  Object#have_struct_member
  Object#have_type
  Object#have_var
  Object#help
  Object#httpd
  Object#inspect
  Object#install
  Object#instance_eval
  Object#instance_exec
  Object#instance_of?
  Object#instance_variable_defined?
  Object#instance_variable_get
  Object#instance_variable_set
  Object#instance_variables
  Object#is_a?
  Object#iterator?
  Object#kind_of?
  Object#lambda
  Object#ln
  Object#load
  Object#local_variables
  Object#loop
  Object#method
  Object#mkdir
  Object#mkmf
  Object#must_be
  Object#must_be_empty
  Object#must_be_instance_of
  Object#must_be_kind_of
  Object#must_be_nil
  Object#must_be_same_as
  Object#must_be_silent
  Object#must_be_within_delta
  Object#must_be_within_epsilon
  Object#must_equal
  Object#must_include
  Object#must_match
  Object#must_output
  Object#must_raise
  Object#must_respond_to
  Object#must_send
  Object#must_throw
  Object#mv
  Object#nil?
  Object#object_id
  Object#p
  Object#pp
  Object#pretty_inspect
  Object#pretty_print
  Object#pretty_print_cycle
  Object#pretty_print_inspect
  Object#pretty_print_instance_variables
  Object#print
  Object#printf
  Object#proc
  Object#psych_to_yaml
  Object#psych_y
  Object#public_method
  Object#public_send
  Object#putc
  Object#puts
  Object#raise
  Object#rand
  Object#readline
  Object#readlines
  Object#require_relative
  Object#respond_to?
  Object#respond_to_missing?
  Object#rm
  Object#rmdir
  Object#scanf
  Object#select
  Object#send
  Object#set_trace_func
  Object#setup
  Object#singleton_class
  Object#singleton_methods
  Object#sleep
  Object#spawn
  Object#sprintf
  Object#srand
  Object#sub
  Object#syscall
  Object#sysread
  Object#system
  Object#taint
  Object#tainted?
  Object#tap
  Object#test
  Object#throw
  Object#timeout
  Object#to_enum
  Object#to_s
  Object#to_yaml
  Object#touch
  Object#trace_var
  Object#trap
  Object#trust
  Object#try_const
  Object#try_type
  Object#untaint
  Object#untrace_var
  Object#untrust
  Object#untrusted?
  Object#wait_writable
  Object#warn
  Object#with_config
  Object#wont_be
  Object#wont_be_close_to
  Object#wont_be_empty
  Object#wont_be_instance_of
  Object#wont_be_kind_of
  Object#wont_be_nil
  Object#wont_be_same_as
  Object#wont_be_within_delta
  Object#wont_be_within_epsilon
  Object#wont_equal
  Object#wont_include
  Object#wont_match
  Object#wont_respond_to
  Object#xmp

=end