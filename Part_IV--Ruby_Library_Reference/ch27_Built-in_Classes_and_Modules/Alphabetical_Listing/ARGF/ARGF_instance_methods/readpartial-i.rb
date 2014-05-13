text = <<ET

= ARGF#readpartial

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.readpartial(maxlen)              -> string
  ARGF.readpartial(maxlen, outbuf)      -> outbuf

------------------------------------------------------------------------------

Reads at most maxlen bytes from the ARGF stream. It blocks only if
ARGF has no data immediately available. If the optional outbuf
argument is present, it must reference a String, which will receive the data.
It raises EOFError on end of file.

readpartial is designed for streams such as pipes, sockets, and ttys. It
blocks only when no data is immediately available. This means that it blocks
only when following all conditions hold:

* The byte buffer in the IO object is empty.
* The content of the stream is empty.
* The stream has not reached EOF.

When readpartial blocks, it waits for data or EOF. If some data is read,
readpartial returns with the data. If EOF is reached, readpartial raises an
EOFError.

When readpartial doesn't block, it returns or raises immediately.  If the byte
buffer is not empty, it returns the data in the buffer. Otherwise, if the
stream has some content, it returns the data in the stream. If the stream
reaches EOF an EOFError is raised.

ET

# ruby ARGF#readpartial.rb glark.txt

outbuf = "" 
p ARGF.readpartial(20, outbuf)
