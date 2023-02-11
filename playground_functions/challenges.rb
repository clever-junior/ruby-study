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

  # # Challenge 5
  # def footballPoints()
  #   # Your code here
  # end

  # # Challenge 6
  # def highestCount()
  #   # Your code here
  # end

  # # Challenge 7
  # def catAndMouse()
  #   # Your code here
  # end

  # # Challenge 8
  # def fizzBuzz()
  #   # Your code here
  # end

  # # Challenge 9
  # def encode()
  #   # Your code here
  # end

  # def decode()
  #   # Your code here
  # end

  # # Challenge 10
  # def techList()
  #   # Your code here
  # end
end
