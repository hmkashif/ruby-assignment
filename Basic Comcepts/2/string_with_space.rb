# frozen_string_literal: true

print 'Please enter a positive integer: '
lines = gets.chomp.to_i

if lines.negative?
  puts 'You did not enter a positive number!'
else
  print 'Please enter a string: '
  str = gets.chomp

  1.upto(lines) do |mul|
    puts str * mul
  end
end
