# Print all modules (excluding classes)
modules = Module.constants.sort.select {|x| eval(x.to_s).instance_of? Module}

p modules