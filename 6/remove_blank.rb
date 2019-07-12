# frozen_string_literal: true

arr = ['one', 'two', '', 'four', '', 'six', 'seven', 'eight', '9', '10']

print "Before: #{arr}\n"

arr.reject!(&:empty?)

print "After: #{arr}\n"
