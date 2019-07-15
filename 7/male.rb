# frozen_string_literal: true

require_relative 'person'
# class
class Male < Person
  attr_reader :gender
  def initialize(name = 'Person', age = 18)
    super
    @gender = 'Male'
  end

  def hair
    puts 'I am Hair from Male class.'
  end
end
