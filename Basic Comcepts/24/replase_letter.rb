# frozen_string_literal: true

print 'Please enter string: '
str = gets.chomp

puts "Modified string: #{str.gsub('', 'o')}"
