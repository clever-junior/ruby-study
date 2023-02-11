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
    input = ['Lucas', 'Cassiano', 'Ferraz', 'Paolillo']
    expected_result = "Paolillo, Lucas"

    assert_equal expected_result, Challenges.concat_name(input)

    input = ['Ferraz', 'James', 'Armando', 'Cassiano']
    expected_result = "Cassiano, Ferraz"

    assert_equal expected_result, Challenges.concat_name(input)

    input = ['captain', 'my', 'captain']
    expected_result = "captain, captain"

    assert_equal expected_result, Challenges.concat_name(input)
  end

  def test_football_points
    assert_equal 50, Challenges.football_points(14, 8)
    assert_equal 5, Challenges.football_points(1, 2)
    assert_equal 0, Challenges.football_points(0, 0)
  end

  def test_highest_count
    input = [9, 1, 2, 3, 9, 5, 7]
    expected_result = 2

    assert_equal expected_result, Challenges.highest_count(input)

    input = [0, 4, 4, 4, 9, 2, 1]
    expected_result = 1

    assert_equal expected_result, Challenges.highest_count(input)

    input = [0, 0, 0]
    expected_result = 3

    assert_equal expected_result, Challenges.highest_count(input)
  end
end
