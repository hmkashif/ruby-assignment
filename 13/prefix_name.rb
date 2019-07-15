# frozen_string_literal: true

# class
class Person
  attr_writer :name

  def initialize
    @name
  end

  def name
    'Mr. ' + @name
  end
end

person1 = Person.new
person1.name = 'James'
puts person1.name
