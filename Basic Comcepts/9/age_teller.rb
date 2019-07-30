# frozen_string_literal: true

require 'Date'
print 'Please enter your DOB(DD/MM/YYYY)'
dob = gets.chomp

dob_converted = Date.strptime(dob, '%d/%m/%Y')
today = Date.today

diff = (today - dob_converted).to_i

years, _remainder = diff.divmod(365)

puts "Nice! You are #{years} years old."
