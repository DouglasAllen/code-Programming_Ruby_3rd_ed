base = "http://media.pragprog.com/titles/ruby3/code/samples/classes_"

for i in 1..88
  
  url = "#{ base }#{ i }.rb"
  file = "classes_#{i}.rb"
  #puts "#{url}"
  File.open(file, 'w') do |f|
	
     system "curl -o #{f.path} #{url}"
  end
  
end