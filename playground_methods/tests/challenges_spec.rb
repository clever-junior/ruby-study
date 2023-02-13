require_relative "../challenges"
require "minitest/autorun"
require "set"
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

  def test_cat_and_mouse
    cat1 = 3
    cat2 = 2
    mouse = 6
    expected_result = 'cat2'

    assert_equal expected_result, Challenges.cat_and_mouse(mouse, cat1, cat2)

    cat1 = 6
    cat2 = 12
    mouse = 9
    expected_result = 'cat1'

    assert_equal expected_result, Challenges.cat_and_mouse(mouse, cat1, cat2)

    cat1 = 1
    cat2 = 1
    mouse = 2
    expected_result = 'the cats crash and the mouse runs away'

    assert_equal expected_result, Challenges.cat_and_mouse(mouse, cat1, cat2)
  end

  def test_fuzz_buzz
    input = [2, 15, 7, 9, 45]
    expected_output = ["bug!", "fizzBuzz", "bug!", "fizz", "fizzBuzz"]

    assert_equal expected_output, Challenges.fizz_buzz(input)

    input = [7, 9]
    expected_output = ['bug!', 'fizz']

    assert_equal expected_output, Challenges.fizz_buzz(input)

    input = [9, 25]
    expected_output = ['fizz', 'buzz']

    assert_equal expected_output, Challenges.fizz_buzz(input)
  end

  def test_encode_decode
    input = "hi there!"
    expected_output = "h3 th2r2!"

    assert_equal expected_output, Challenges.encode(input)
    assert_equal input, Challenges.decode(expected_output)

    input = "Hello World!"
    expected_output = "H2ll4 W4rld!"

    assert_equal expected_output, Challenges.encode(input)
    assert_equal input, Challenges.decode(expected_output)

    input = "Ruby Language!"
    expected_output = "R5by L1ng51g2!"

    assert_equal expected_output, Challenges.encode(input)
    assert_equal input, Challenges.decode(expected_output)
  end

  def test_tech_list
    name = "Clever"
    input = ["Rails", "Jest", "HTML", "CSS", "JavaScript", "Ruby", "Minitest"]
    expected_output = [
      {
        'tech': "CSS",
        'name': "Clever"
      },
      {
        'tech': "HTML",
        'name': "Clever"
      },
      {
        'tech': "JavaScript",
        'name': "Clever"
      },
      {
        'tech': "Jest",
        'name': "Clever"
      },
      {
        'tech': "Rails",
        'name': "Clever"
      },
      {
        'tech': "Minitest",
        'name': "Clever"
      },
      {
        'tech': "Ruby",
        'name': "Clever"
      }
    ]
    tech_list = Challenges.tech_list(input, name)

# https://allaboutcoding.ghinda.com/how-to-compare-two-arrays-of-hashes-by-value-in-ruby
=begin
  This solution uses the difference and union to check that the difference between the two arrays does not contain 7
  any elements. The difference between the two arrays will return all elements in the first array that are not present
  in the second array. See Array#-
  So this solution simply makes sure that a - b is empty and b - a is also empty.
=end

    diff = ((expected_output - tech_list) + (tech_list - expected_output)).empty?

    assert_equal diff, true

    assert_equal Challenges.tech_list([], name), "Void!"
  end

  def test_generate_phone_number
    valid_input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1]
    expected_output = "(12) 34567-8901"

    arr_incorrect_error = "Array length must be 11"
    arr_invalid_number_error = "Array must be in 0 - 9 range"
    arr_too_much_reapeat = "Isn't possible generate phone number"

    assert_equal expected_output, Challenges.generate_phone_number(valid_input)

    invalid_input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 1, 2] # arr greater than expected

    assert_equal Challenges.generate_phone_number(invalid_input), arr_incorrect_error

    invalid_input = [1, 2, 3, 4, 5, 6, 7, 8] # arr less than expected

    assert_equal Challenges.generate_phone_number(invalid_input), arr_incorrect_error

    invalid_input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 10] #arr have greater than 9 number

    assert_equal Challenges.generate_phone_number(invalid_input), arr_invalid_number_error

    invalid_input = [1, 2, 3, 4, 5, 6, 7, 8, -9, 0, 1] #arr have less than 0 number

    assert_equal Challenges.generate_phone_number(invalid_input), arr_invalid_number_error

    invalid_input = [1, 1, 1, 4, 5, 6, 7, 8, 9, 0, 1] #arr have repeated 3 times or more number

    assert_equal Challenges.generate_phone_number(invalid_input), arr_too_much_reapeat

    invalid_input = [1, 1, 1, 1, 5, 6, 7, 8, 9, 0, 1] #arr have repeated 3 times or more number

    assert_equal Challenges.generate_phone_number(invalid_input), arr_too_much_reapeat
  end
end
