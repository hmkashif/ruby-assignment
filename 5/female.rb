# frozen_string_literal: true

require_relative 'person'
# class
class Female < Person
  attr_reader :gender
  def initialize(name = 'Person', age = 18)
    super
    @gender = 'Female'
  end
end
