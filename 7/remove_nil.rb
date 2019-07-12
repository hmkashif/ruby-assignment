# frozen_string_literal: true

arr = ['one', 'two', '', nil ,'four', '', 'six', 'seven', 'eight', '9', '10']

print "Before: #{arr}\n"

arr.reject! do |item|
  item.nil? || item.empty?
end

print "After: #{arr}\n"
