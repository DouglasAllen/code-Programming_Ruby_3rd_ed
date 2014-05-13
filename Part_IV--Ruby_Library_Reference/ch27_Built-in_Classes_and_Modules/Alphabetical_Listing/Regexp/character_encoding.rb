# character_encoding.rb

#system 'ri String.toutf8'
#system 'ri String.toutf16'
#system 'ri String.toutf32'
#system 'ri String.codepoints'

abc = "abc"
puts abc.encoding.name  # >> US-ASCII

abc.force_encoding("UTF-8")
puts abc.encoding.name  # >> UTF-8
p __ENCODING__

p abc.toutf8.encoding.name
p abc.toutf16.encoding.name
p abc.toutf32.encoding.name

p "hello\u0639"
"hello\u0639".each_codepoint {|c| print c, ' ' }
p 
