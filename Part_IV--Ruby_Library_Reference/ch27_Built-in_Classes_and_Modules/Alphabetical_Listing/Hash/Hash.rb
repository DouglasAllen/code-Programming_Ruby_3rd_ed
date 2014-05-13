Hash.public_methods(false).sort.each do |method| 
  puts method
end
puts
Hash.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Hash.constants.sort.each do |constant| 
  puts constant
end
# Note: found a ClassMethods constant for JRuby
#~ Hash.constants.sort.each do |name| 
  #~ puts "Hash::#{name}::ClassMethods => #{Hash.const_get(name).const_get(:ClassMethods)}"
#~ end
puts
puts Hash.superclass