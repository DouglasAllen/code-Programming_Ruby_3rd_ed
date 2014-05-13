text = <<ET

= ARGF#inplace_mode=

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.inplace_mode = ext  -> ARGF

------------------------------------------------------------------------------

  Sets the filename extension for inplace editing mode to the given String.
  Each file being edited has this value appended to its filename. The
  modified file is saved under this new name.

  For example:

      $ ruby argf.rb file.txt

      ARGF.inplace_mode = '.bak'
      ARGF.lines do |line|
        print line.sub("foo","bar")
      end

Each line of file.txt has the first occurrence of "foo"
replaced with "bar", then the new line is written out to
file.txt.bak.

ET

# ruby ARGF#inplace_mode=.rb foo

ARGF.inplace_mode = '.bak'
ARGF.lines do |line|
   print line.sub("foo","bar")
end 

ARGF.lines do |line|
   print line.sub("bar","foo")
end 
