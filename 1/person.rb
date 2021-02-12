# frozen_string_literal: true

# class
class Person
  attr_reader :name

  def initialize(name = 'Person')
    @name = name
  end
end
