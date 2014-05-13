=begin

File::Constants

------------------------------------------------------------------------------
Also found in:
  ~/.rdoc
=end
File::Constants.public_methods(false).sort.each do |method| 
  puts method
end
puts
File::Constants.public_instance_methods().sort.each do |method| 
  puts method
end
puts
File::Constants.constants.sort.each do |constant| 
  puts constant
end
puts
puts File::Constants.ancestors