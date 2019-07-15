# frozen_string_literal: true

# class
class Person
  # instead of using attr_reader and attr_writer separately,
  # we can use attr_accessor which will perform both functionality

  attr_accessor :name
  attr_accessor :favourite_game

  def initialize(name = 'Person')
    @name = name
  end
end
