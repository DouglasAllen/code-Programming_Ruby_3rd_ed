MatchData.public_methods(false).sort.each do |method| 
  puts method
end
puts
MatchData.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
MatchData.constants.sort.each do |constant| 
  puts constant
end

puts
puts MatchData.superclass