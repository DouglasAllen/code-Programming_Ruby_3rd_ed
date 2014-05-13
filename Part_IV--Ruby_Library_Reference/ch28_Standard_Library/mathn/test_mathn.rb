require 'test/unit'
require_relative '../envutil'

# mathn redefines too much. It must be isolated to child processes.
class TestMathn < Test::Unit::TestCase
  def test_power
    assert_in_out_err ['-r', 'mathn', '-e', 'a=1**2'], "", [], [], '[ruby-core:25740]'
    assert_in_out_err ['-r', 'mathn', '-e', 'a=(1<<126)**2'], "", [], [], '[ruby-core:25740]'
  end
end