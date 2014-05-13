ScriptError.public_methods(false).sort.each do |method| 
  puts method
end
puts
ScriptError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
ScriptError.constants.sort.each do |constant| 
  puts constant
end
puts
puts ScriptError.superclass