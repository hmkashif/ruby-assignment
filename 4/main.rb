# frozen_string_literal: true

require_relative 'person'

person = Person.new('Haider')

puts "Name: #{person.name}"
person.favourite_game = 'FIFA'
puts "Favourite game: #{person.favourite_game}"

person.print_age

person.update_age(12)
