base = "http://media.pragprog.com/titles/ruby3/code/samples/slbase64_"

for i in 1..3
  
  url = "#{ base }#{ i }.rb"
  file = "slbase64_#{i}.rb"
  #puts "#{url}"
  File.open(file, 'w') do |f|
	
     system "curl -o #{f.path} #{url}"
  end
  
end