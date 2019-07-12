# frozen_string_literal: true

# returns true if element is not present
arr = ["Haider", "Kashif", "Waqas"]

print "Original array: #{arr}\n"

# Is there any build in function to prepend a string
# prepend method give an error: can't modify frozen string

arr.collect! do |name|
  "Hello #{name}"
end

print "Array after prepend #{arr} \n"
