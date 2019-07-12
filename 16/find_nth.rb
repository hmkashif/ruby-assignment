# frozen_string_literal: true

arr = [1, 2, 9, 6, 7, 3, 3, 4, 8, 5, 0]
print "#{arr}\n"

print 'I will give you nth max, just give me n: '
nth_max_to_find = gets.to_i

puts nth_max_to_find.positive? ? "#{arr.max(nth_max_to_find).last} is your number" : 'n should be greater than 0'
