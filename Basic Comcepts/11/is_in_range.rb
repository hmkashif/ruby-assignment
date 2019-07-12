# frozen_string_literal: true

print 'Please enter number: '
number = gets.to_i

puts number.between?(1, 10) ? 'its in range!' : 'No its not'
