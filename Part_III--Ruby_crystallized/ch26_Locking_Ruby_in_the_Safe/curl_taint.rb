base = "http://media.pragprog.com/titles/ruby3/code/samples/taint_"

for i in 1..50
  
  url = "#{ base }#{ i }.rb"
  file = "taint_#{i}.rb"
  #puts "#{url}"
  File.open(file, 'w') do |f|
	
     system "curl -o #{f.path} #{url}"
  end
  
end