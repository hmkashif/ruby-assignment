# class
class Person
  attr_writer :name

  def initialize(name)
    @name = name
  end

  def name
    @name.clone
  end
end

person1 = Person.new('James')

person1.name = 'Haider'

person1.name.reverse!
puts person1.name
