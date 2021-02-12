# frozen_string-literal: true

# class
class Person
  def initialize(number)
    @phone_number = number
  end
end

person1 = Person.new(1_234_567_899)

person1.phone_number = 9_987_654_321
# puts person1.phone_number
