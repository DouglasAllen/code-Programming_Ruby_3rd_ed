Dir.glob('*/*.ri').each {|i| File.rename(i, i.gsub('ri', 'rb'))}