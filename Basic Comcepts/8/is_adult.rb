# frozen_string_literal: true

require 'Date'
print 'Please enter your DOB(DD/MM/YYYY)'
dob = gets.chomp

dob_converted = Date.strptime(dob, '%d/%m/%Y')
today = Date.today

diff = (today - dob_converted).to_i

puts diff / 365 >= 18 ? 'Wow, you are an adult!' : 'Oops! You aren\'t adult'
