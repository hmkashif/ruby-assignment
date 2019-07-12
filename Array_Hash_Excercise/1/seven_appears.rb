# frozen_string_literal: true

print 'Please enter number to search: '
num = gets.to_i

arr = [1, 2, 3, 4, 5, 6, 7]

puts arr.index(num).zero? || arr.index(num) == -1
