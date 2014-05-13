base = "http://media.pragprog.com/titles/ruby3/code/samples/slabbrev_"

for i in 1..2
  
  url = "#{ base }#{ i }.rb"
  file = "slabbrev_#{i}.rb"
  #puts "#{url}"
  File.open(file, 'w') do |f|
	
     system "curl -o #{f.path} #{url}"
  end
  
end