base = "http://media.pragprog.com/titles/ruby3/code/samples/ducktyping_"

for i in 1..50
  
  url = "#{ base }#{ i }.rb"
  file = "ducktyping_#{i}.rb"
  #puts "#{url}"
  File.open(file, 'w') do |f|
	
     system "curl -o #{f.path} #{url}"
  end
  
end