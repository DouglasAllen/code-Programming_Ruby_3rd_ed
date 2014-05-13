Dir.glob('*/*.ri').each {|item| File.rename(item, item.sub(".ri", ".rb"))}
Dir.glob('*/*/*.ri').each {|item| File.rename(item, item.sub(".ri", ".rb"))}
Dir.glob('*/*/*/*.ri').each {|item| File.rename(item, item.sub(".ri", ".rb"))}