# frozen_string_literal: true

# class
class Person
  attr_reader :full_name


  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @full_name = @first_name + ' ' + @last_name
  end
end

person = Person.new('Kashif', 'Ali')
puts person.full_name
