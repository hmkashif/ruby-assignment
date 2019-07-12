# frozen_string_literal: true

def change_but_no_save(str, from, to)
  puts "Changed str: #{str.gsub(from, to)}\nOriginal variable: #{str}"
end

print 'Please enter string: '
str = gets.chomp

change_but_no_save(str, 'hello', 'world')
