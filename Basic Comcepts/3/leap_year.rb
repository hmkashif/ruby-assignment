# frozen_string_literal: true

require 'Date'

print 'Please enter year: '
year = gets.to_i

puts Date.leap?(year) ? 'yeah, it\'s a leap year!' : 'Nope, this is not a leap year'
