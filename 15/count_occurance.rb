# frozen_string_literal: true

arr = [1, 2, 9, 6, 7, 3, 3, 4, 8, 5, 0]
print "#{arr}\n"

print 'Please enter number to find: '
number_to_find = gets.to_i

print "how many times should #{number_to_find} occure: "
count_to_compare = gets.to_i

puts arr.count(number_to_find) == count_to_compare
