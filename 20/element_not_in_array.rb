# frozen_string_literal: true

# returns true if element is not present
arr = [1, 2, 9, 6, 7, 3, 4, 8, 5, 0]
print "Original array: #{arr}\n"

print 'Please enter element to find: '
item_to_find = gets.chomp.to_i

puts !arr.include?(item_to_find)
