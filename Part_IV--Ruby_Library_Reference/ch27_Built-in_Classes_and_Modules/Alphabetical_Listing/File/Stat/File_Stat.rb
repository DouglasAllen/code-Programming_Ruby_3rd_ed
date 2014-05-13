File::Stat.public_methods(false).sort.each do |method| 
  puts method
end
puts
File::Stat.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
File::Stat.constants.sort.each do |constant| 
  puts constant
end

puts
puts File::Stat.superclass