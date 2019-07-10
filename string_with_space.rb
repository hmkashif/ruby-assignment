# frozen_string_literal: true

print 'Please enter Number of lines: '
lines = gets.chomp.to_i

print 'Please enter a string: '
str = gets.chomp

1.upto(lines) do |mul|
  puts ' ' * (mul - 1) << str
end
