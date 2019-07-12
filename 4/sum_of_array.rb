# frozen_string_literal: true

arr = [1, 2, 3, 4, 5, 6, 7]

print arr, "\n"

puts "Sum: #{arr.inject(0, &:+)}"
