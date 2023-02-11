require_relative "../challenges"
require "minitest/autorun"
include Challenges

class TestCompareTrue < MiniTest::Unit::TestCase
  def test_compare_true
    assert_equal false, Challenges.compare_true(true, false)
    assert_equal false, Challenges.compare_true(false, true)
    assert_equal false, Challenges.compare_true(false, false)
    assert_equal true, Challenges.compare_true(true, true)
  end
end
