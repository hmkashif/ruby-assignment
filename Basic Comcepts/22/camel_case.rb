# frozen_string_literal: true

print 'Please enter string: '
str = gets.chomp

str = str.split(' ').map(&:capitalize).join(' ')

puts "Camel Case String: #{str}"
