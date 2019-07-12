# frozen_string_literal: true

# returns true if element is not present
arr = [1, 2, 9, 6, 7, 3, 4, 8, 5, 0]
print "Original array: #{arr}\n"

puts "Array of even numbers: #{arr.select(&:even?)}"
