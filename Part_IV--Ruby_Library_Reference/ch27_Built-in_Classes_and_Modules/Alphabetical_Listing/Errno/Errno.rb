
Errno.public_methods(false).sort.each do |method| 
  puts method
end
puts
Errno.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
#~ Errno.constants.sort.each do |constant| 
  #~ puts constant
#~ end

#~ Errno.constants.sort.each do |name| 
  #~ symbol = "#{Errno}::#{name}::#{Errno}".to_sym  
  #~ p eval("#{symbol}")
#~ end
#~ puts
Errno.constants.sort.each do |name| 
  puts "Errno::#{name}::Errno => #{Errno.const_get(name).const_get(:Errno)}"
end
#~ puts Errno::E2BIG::Errno
puts
puts Errno.ancestors
#~ Errno.constants.sort.each do |name| 
  #~ string = "Errno::#{name}::Errno"
  #~ puts string
#~ end