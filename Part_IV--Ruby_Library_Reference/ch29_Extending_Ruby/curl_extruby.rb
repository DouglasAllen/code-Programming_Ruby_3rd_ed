base = "http://media.pragprog.com/titles/ruby3/code/samples/extruby_"

for i in 51..75
  
  url = "#{ base }#{ i }.rb"
  file = "extruby_#{i}.rb"
  #puts "#{url}"
  File.open(file, 'w') do |f|
	
     system "curl -o #{f.path} #{url}"
  end
  
end