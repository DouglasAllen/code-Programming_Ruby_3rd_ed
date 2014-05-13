base = "http://media.pragprog.com/titles/ruby3/code/samples/"

code = "slcgi_"

for i in 1..8
  
  url = "#{ base }#{code}#{ i }.rb"
  
  file = "#{code}#{i}.rb"
  
  File.open(file, 'w') do |f|	
     system "curl -o #{f.path} #{url}"
  end
  
end