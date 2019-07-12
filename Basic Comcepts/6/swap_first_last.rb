# frozen_string_literal: true

print 'Please enter the string: '
string = gets.chomp

first = string[0]
string[0] = string[-1]
string[-1] = first

puts string
