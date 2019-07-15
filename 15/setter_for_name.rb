# frozen_string_literal: true

# class
class Boy
  attr_writer :name
  def initialize(name)
    @name = name
  end

  def name
    "My Name is \'#{@name.upcase}\'"
  end
end

b = Boy.new('ali')
b.name = 'ali'
puts b.name
