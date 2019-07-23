# frozen_string_literal: true

date = Time.new
values = date.to_a

puts 'Current Date and Time: ' + date.strftime('%-d-%m-%Y %l:%M %p')
puts 'Current Date and Time: ' + date.strftime('%-d-%m-%Y %H:%M')
puts 'Current Date and Time: ' + date.strftime('%A %-d %B %Y %l:%M %p')
