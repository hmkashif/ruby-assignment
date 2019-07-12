# frozen_string_literal: true

numbers = []

1.upto(3) do
  print 'Please enter number: '
  numbers << gets.to_i
end

puts "Max is: #{numbers.max}"
