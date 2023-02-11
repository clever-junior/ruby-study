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

  def test_calc_triangle_area
    assert_equal 250, Challenges.calc_triangle_area(10, 50)
    assert_equal 5, Challenges.calc_triangle_area(5, 2)
    assert_equal 25.5, Challenges.calc_triangle_area(51, 1)
  end

  def test_split_sentence
    assert_equal ['Hello', 'World'], Challenges.split_sentence("Hello World")
    assert_equal ['Ruby', 'is', 'very', 'cool'], Challenges.split_sentence("Ruby is very cool")
    assert_equal ['Ruby'], Challenges.split_sentence("Ruby")
  end

  def test_concat_name
    array = ['Lucas', 'Cassiano', 'Ferraz', 'Paolillo']
    array1 = ['Ferraz', 'James', 'Armando', 'Cassiano']
    array2 = ['captain', 'my', 'captain']

    assert_equal "Paolillo, Lucas", Challenges.concat_name(array)
    assert_equal "Cassiano, Ferraz", Challenges.concat_name(array1)
    assert_equal "captain, captain", Challenges.concat_name(array2)
  end
end
