# ruby argf1.rb --verbose file1 file2
puts ARGV.inspect  #=> ["--verbose", "file1", "file2"]
option = ARGV.shift #=> "--verbose"
puts option
#puts ARGV.inspect  #=> ["file1", "file2"]
#puts ARGF.read
#puts ARGV.inspect
#ARGV.replace ["file1"]
#puts ARGF.readlines.inspect
#puts ARGV.inspect
#system('echo "If ARGV is empty, ARGF acts as if it contained STDIN, i.e. the data piped to your script. " | ruby -e \'p ARGF.read\'')
