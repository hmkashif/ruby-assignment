# frozen_string_literal: true

print 'Please enter path of file: '
path = gets.chomp

puts "File name: #{File.basename(path)}"
puts "Base name: #{File.basename(path, '.*')}"
puts "Extension: #{File.extname(path)}"
puts "Path name: #{File.dirname(path)}"
