# frozen_string_literal: true

# class
class Person
  # a reader is a way of reading attributes or characteristics of
  # a class

  attr_reader :name
  attr_reader :favourite_game

  # a writer is a method which helps us writing to attributes of
  # a class
  attr_writer :name
  attr_writer :favourite_game

  def initialize(name = 'Person')
    @name = name
  end
end
