=begin

Errno

(from ~/.rdoc)
------------------------------------------------------------------------------
Ruby exception objects are subclasses of Exception.However, operating
systems typically report errors using plainintegers. Module Errno is
created dynamically to mapthese operating system errors to Ruby classes, with
each errornumber generating its own subclass of SystemCallError.As the
subclass is created in module Errno, its namewill start Errno::.

The names of the Errno:: classes depend onthe environment in which Ruby
runs. On a typical Unix or Windowsplatform, there are Errno classes
such asErrno::EACCES, Errno::EAGAIN,Errno::EINTR, and so
on.

The integer operating system error number corresponding to aparticular error
is available as the class constantErrno::error::Errno.

  Errno::EACCES::Errno   #=> 13
  Errno::EAGAIN::Errno   #=> 11
  Errno::EINTR::Errno    #=> 4

The full list of operating system errors on your particular platformare
available as the constants of Errno.

  Errno.constants   #=> :E2BIG, :EACCES, :EADDRINUSE, :EADDRNOTAVAIL, ...

System call error module used by webrick for cross platform compatability.

EPROTO:
  protocol error

ECONNRESET:
  remote host reset the connection request

ECONNABORTED:
  Client sent TCP reset (RST) before server has accepted theconnection
  requested by client.

------------------------------------------------------------------------------

=end