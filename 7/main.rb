# frozen_string_literal: true

require_relative 'male'
require_relative 'female'

person = Male.new('Haider', 23)

person.favourite_game = 'FIFA'

puts "Name: #{person.name}"
puts "Favourite game: #{person.favourite_game}"
puts "Age: #{person.age}"
puts "Gender: #{person.gender}"
puts person.hair
