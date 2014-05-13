
FileTest.public_methods(false).sort.each do |method| 
  puts method
end
puts
FileTest.public_instance_methods().sort.each do |method| 
  puts method
end
puts
FileTest.constants.sort.each do |constant| 
  puts constant
end
puts
puts FileTest.ancestors