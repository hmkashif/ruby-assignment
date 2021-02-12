# frozen_string_literal: true

# class
class Person
  def initialize(name)
    @name = name
  end

  def method_missing(method_name, *_args, &_block)
    puts "Hey #{@name} #{method_name} is not registered for this class"
  end
end

person = Person.new('Waqas')
person.some_method
