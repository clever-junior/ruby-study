puts "Hello, world!"
print "Hello, world!"
puts "\"Hello\" \"World\""
puts "One more one equals to: #{1 + 1}"
puts '#{1 + 1}'
puts %Q(1 + 1 is #{1 + 1})

variable_test = <<HEREDOC
This would contain specially formatted text.

That might span many lines
HEREDOC

expected_result = <<-INDENTED_HEREDOC
This would contain specially formatted text.

That might span many lines
  INDENTED_HEREDOC

puts variable_test

p expected_result

expected_result = "One plus one is #{1 + 1}".chomp

p -> { 1 + 1 }

p %w[one one-hundred\ one]
