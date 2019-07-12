# frozen_string_literal: true

arr = [1, 2, 3, 4, 5, 6]

print 'How many number you want to pick randomly: '
num = gets.to_i

puts "#{num} random numbers are: #{arr.sample(num)}"
