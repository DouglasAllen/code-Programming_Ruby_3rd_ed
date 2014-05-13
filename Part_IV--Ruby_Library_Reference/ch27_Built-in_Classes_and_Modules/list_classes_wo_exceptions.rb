
# Print all classes (excluding exceptions)
classes_wo_exceptions = Module.constants.sort.select {|x|
  c = eval(x.to_s)
  c.is_a? Class and not c.ancestors.include? Exception
}


p classes_wo_exceptions