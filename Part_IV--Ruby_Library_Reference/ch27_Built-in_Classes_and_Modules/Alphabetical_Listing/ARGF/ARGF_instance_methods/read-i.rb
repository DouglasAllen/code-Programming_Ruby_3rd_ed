text = <<ET

= ARGF#read

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.read([length [, buffer]])    -> string, buffer, or nil

------------------------------------------------------------------------------

  Reads _length_ bytes from ARGF. The files named on the command line
  are concatenated and treated as a single file by this method, so when
  called without arguments the contents of this pseudo file are returned in
  their entirety.

  _length_ must be a non-negative integer or nil. If it is a positive
  integer, +read+ tries to read at most _length_ bytes. It returns nil
  if an EOF was encountered before anything could be read. Fewer than
  _length_ bytes may be returned if an EOF is encountered during the read.

  If _length_ is omitted or is _nil_, it reads until EOF. A String is
  returned even if EOF is encountered before any data is read.

  If _length_ is zero, it returns _""_.

  If the optional _buffer_ argument is present, it must reference a String,
  which will receive the data.

For example:

     $ echo "small" > small.txt
     $ echo "large" > large.txt
     $ ./glark.rb small.txt large.txt

     ARGF.read      #=> "small\nlarge"
     ARGF.read(200) #=> "small\nlarge"
     ARGF.read(2)   #=> "sm"
     ARGF.read(0)   #=> ""

  Note that this method behaves like fread() function in C.  If you need the
  behavior like read(2) system call, consider +ARGF.readpartial+.

ET



# echo "small" > small.txt
# echo "large" > large.txt
# 
# ruby ARGF#read.rb small.txt large.txt

p ARGF.read      #=> "small\nlarge"
p ARGF.read(200) #=> "small\nlarge"
p ARGF.read(2)   #=> "sm"
p ARGF.read(0)   #=> ""
 
