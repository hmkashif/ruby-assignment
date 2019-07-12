# frozen_string_literal: true

print 'Please enter number: '
num = gets.chomp

puts "Your order-id is: ORD-#{num.rjust(5, '0')}"
