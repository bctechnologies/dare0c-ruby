require 'minitest/autorun'
require 'assignment'

class AssignmentTest < Minitest::Test

  def test_reverse
    reverser = Reverser.new
    text = File.read('test/sample.txt')
    assert_equal 'zyxwvutsrqponmlkjihgfedcba', reverser.reverse(text)
  end

  def test_reverse2
    reverser = Reverser.new
    assert_equal '9876543210', reverser.reverse('0123456789')
  end

end
