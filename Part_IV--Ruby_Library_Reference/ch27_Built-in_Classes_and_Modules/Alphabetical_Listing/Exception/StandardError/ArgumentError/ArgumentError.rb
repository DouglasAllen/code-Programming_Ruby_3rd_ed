# ArgumentError.rb



ArgumentError.public_methods(false).sort.each do |method| 
  puts method
end
puts
ArgumentError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
ArgumentError.constants.sort.each do |constant| 
  puts constant
end
puts
puts ArgumentError.superclass

