=begin

Exception#backtrace

(from ~/.rdoc)
------------------------------------------------------------------------------
  exception.backtrace    -> array

------------------------------------------------------------------------------

Returns any backtrace associated with the exception. The backtraceis an array
of strings, each containing either ``filename:lineNo: in`method''' or
``filename:lineNo.''

  def a
    raise "boom"
  end

  def b
    a()
  end

  begin
    b()
  rescue => detail
    print detail.backtrace.join("\n")
  end

produces:

  prog.rb:2:in `a'
  prog.rb:6:in `b'
  prog.rb:10
  
=end