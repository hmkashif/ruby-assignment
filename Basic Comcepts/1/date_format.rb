# frozen_string_literal: true

date = Time.new
values = date.to_a

puts 'Different formats are: \n'
puts date.strftime('%a %b %d, %Y %I:%M:%S %p')
puts date.strftime('%A %B %d, %Y %H:%M:%S')
puts date.strftime('%d %m %Y %I:%M:%S %p')
puts date.strftime('%d/%m/%y %H:%M:%S')
puts date.strftime('%d-%m-%Y %I %M %S %p')
puts date.strftime('%x')
puts date.strftime('%X')

puts '------------'

puts date.to_s
puts date.localtime
puts date.ctime
puts Time.local(*values)
puts Time.utc(*values)
puts Time.gm(*values)
