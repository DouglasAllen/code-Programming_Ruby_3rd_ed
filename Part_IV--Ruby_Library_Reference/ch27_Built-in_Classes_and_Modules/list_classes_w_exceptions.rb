
# Print all exceptions
classes_w_exceptions = Module.constants.sort.select {|x|
  c = eval(x.to_s)
  c.instance_of? Class and c.ancestors.include? Exception
}

p classes_w_exceptions