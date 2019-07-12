# frozen_string_literal: true

animals = %w[cat dog bishop snake elephant]

print animals, "\n"

print 'Check: '
animal_to_check = gets.chomp

puts animals.include?(animal_to_check)
