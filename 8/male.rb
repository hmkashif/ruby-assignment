# frozen_string_literal: true

require_relative 'person'
require_relative 'walkable'

# class
class Male < Person
  include Walkable
  attr_reader :gender
  def initialize(name = 'Person', age = 18)
    super
    @gender = 'Male'
  end

  def hair
    puts 'I am Hair from Male class.'
  end
end
