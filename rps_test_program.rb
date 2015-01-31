require_relative 'rps'
require 'minitest/autorun'

class RPSTest < Minitest::Test
  
  def test_simple_input_with_expected_integer_output
    test = Player.new(p1)
    assert_kind_of(String, test)
  end
end
 #  def test_if_tax_is_default_value
#     check = CheckSplitter.new(100, 4)
#     assert_equal(20, check.tip)
#   end
# end
  