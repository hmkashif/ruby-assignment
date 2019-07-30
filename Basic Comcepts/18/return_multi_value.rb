# frozen_string_literal: true

def sum(aval, bval)
  return aval, bval, (aval + bval)
end

print 'Please enter first number: '
first = gets.to_i

print 'Please second number: '
second = gets.to_i

a, b, sum = sum(first, second)

puts "a = #{a}\nb = #{b}\nsum = #{sum}"
