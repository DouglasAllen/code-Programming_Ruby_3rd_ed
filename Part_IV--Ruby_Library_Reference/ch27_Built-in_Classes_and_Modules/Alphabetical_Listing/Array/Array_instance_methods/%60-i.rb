=begin

Array#`

(from ~/.rdoc)
Implementation from Kernel
------------------------------------------------------------------------------
  `cmd`    -> string

------------------------------------------------------------------------------

Returns the standard output of running cmd in a subshell. The built-in
syntax %x{...} uses this method. Sets $? to the process status.

  `date`                   #=> "Wed Apr  9 08:56:30 CDT 2003\n"
  `ls testdir`.split[1]    #=> "main.rb"
  `echo oops && exit 99`   #=> "oops\n"
  $?.exitstatus            #=> 99
  
=end