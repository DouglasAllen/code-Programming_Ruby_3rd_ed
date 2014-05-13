base = "http://media.pragprog.com/titles/ruby3/code/samples/"

code = "slbenchmark_"

for i in 1..3
  
  url = "#{ base }#{code}#{ i }.rb"
  file = "slbenchmark_#{i}.rb"
  #puts "#{url}"
  File.open(file, 'w') do |f|	
     system "curl -o #{f.path} #{url}"
  end
  
end