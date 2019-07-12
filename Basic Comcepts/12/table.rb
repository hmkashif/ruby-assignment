# frozen_string_literal: true

print 'Please enter number: '
number = gets.chomp
number = number.to_i

1.upto(10) do |mul|
  puts "#{number} x #{mul} = #{number * mul}"
end
