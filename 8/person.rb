# frozen_string_literal: true

# class
class Person
  # instead of using attr_reader and attr_writer separately,
  # we can use attr_accessor which will perform both functionality

  attr_accessor :name
  attr_accessor :favourite_game
  attr_reader :age

  def initialize(name = 'Person', age = 18)
    @name = name
    @age = age
  end

  def print_age
    puts @age
  end

  def hair
    puts 'Hair: I am Hair method from Person class.'
  end

  private

  def update_age(new_age)
    @age = new_age
  end
end