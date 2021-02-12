# frozen_string_literal: true

require 'CSV'

csv_file = CSV.read('file.csv')

csv_row = [3, 'Taha', 3000, 'Asso.Soft.Eng']

csv_file << csv_row

puts '------------ file.csv ------------'

csv_file.each do |row|
  puts row[0].to_s.ljust(5) + row[1].ljust(20) + row[2].to_s.ljust(10) + row[3].ljust(25)
end

csv_file2 = CSV.open('output.csv', 'a+')

row_count = csv_file2.count

csv_file2 << [row_count + 1, 'Taha', 100 * (row_count + 1), 'HR Manager']
csv_file2.close

puts '------------ output.csv ------------'
CSV.foreach('output.csv') do |row|
  puts row[0].to_s.ljust(5) + row[1].ljust(20) + row[2].to_s.ljust(10) + row[3].ljust(25)
end
