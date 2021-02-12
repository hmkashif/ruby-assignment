# frozen_string_literal: true

# class
class Person
  attr_accessor :name

  def initialize; end
end

person = Person.new

person.name = 'Ali'
puts person.name
