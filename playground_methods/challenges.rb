module Challenges
  # Challenge 1
  def compare_true(value1, value2)
    value1 && value2
  end

  # Challenge 2
  def calc_triangle_area(base, height)
    (Float(base * height)) / 2
  end

  #Challenge 3

  def split_sentence(sentence)
    sentence.split(' ')
  end

  # Challenge 4
  # Write a function with the name concat_name that, when receiving an array of strings,
  # returns a string in the format 'LAST ITEM, FIRST ITEM', regardless of the size of the array.
  def concat_name(items_arr)
    "#{items_arr.last}, #{items_arr.first}"
  end

  # Challenge 5
  # Each victory worth 3 points, each tie worth 1
  def football_points(wins, ties)
    (wins * 3) + ties
  end

  # Challenge 6
  def highest_count(numbers_arr = [9, 1, 2, 3, 9, 5, 7])
    numbers_arr.count(numbers_arr.max())
  end

  # Challenge 7
  def cat_and_mouse(mouse, cat1, cat2)
    if (cat1 === cat2)
      return 'the cats crash and the mouse runs away'
    end

    return cat1 < cat2 ? "cat1" : "cat2"
  end

  # Challenge 8
  def fizz_buzz(numbers_arr)
    numbers_arr.map do |number|
      if number % 3 == 0 && number % 5 == 0
        'fizzBuzz'
      elsif number % 3 == 0
        'fizz'
      elsif number % 5 == 0
        'buzz'
      else
        'bug!'
      end
    end
  end

  # Challenge 9
  def encode(sentence)
    sentence.split('').map {
      |char|
      if char == 'a'
        1
      elsif char == 'e'
        2
      elsif char == 'i'
        3
      elsif char == 'o'
        4
      elsif char == 'u'
        5
      else
        char
      end
    }.join()
  end

  def decode(enconded_sentence)
    enconded_sentence.split('').map {
      |char|
      if char == '1'
        'a'
      elsif char == '2'
        'e'
      elsif char == '3'
        'i'
      elsif char == '4'
        'o'
      elsif char == '5'
        'u'
      else
        char
      end
    }.join()
  end

  # Challenge 10
  def tech_list(technologies, name)
    if !technologies
      return "Void!"
    end
    technologies.map {
      |tech|
      { :tech => tech, :name => name }
    }
  end
end

include Challenges

Challenges.tech_list(["React", "Jest", "HTML", "CSS", "JavaScript"], 'Clever')
