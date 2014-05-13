puts "see: #{ARGV.class} class for more on these methods"
puts
ARGV.public_methods(false).sort.each do |method| 
  puts method
end
puts
#ARGV.public_instance_methods(false).sort.each do |method| 
#  puts method
#end
puts
#~ ARGV.constants.sort.each do |constant| 
  #~ puts constant
#~ end

#~ puts
#~ puts ARGV.ancestors