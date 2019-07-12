# frozen_string_literal: true

arr = [1, 2, 9, 6, 7, 3, 3, 4, 8, 5, 0]
print "Original array: #{arr}\n"

print 'Please add number to add to each index: '
number_to_add = gets.to_i

# Is there any other way to do this, like a built-in function
# to add any number to all the elements in an array?

arr.collect! do |num|
  num + number_to_add
end

print "Array after addition: #{arr}\n"
