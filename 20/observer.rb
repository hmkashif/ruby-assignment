# frozen_string_literal: true

require 'observer'

# class Subject
class Subject
  include Observable

  def broadcast_change(msg)
    puts 'Broadcasting msg...'
    changed(true)
    notify_observers(msg)
  end
end

# class Observer
class Observer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def update(msg)
    puts "#{name} reporting sir! I got #{msg} from observer"
  end
end

subject = Subject.new

obs1 = Observer.new('Kashif')

subject.add_observer(obs1)

obs2 = Observer.new('Haider')

subject.add_observer(obs2)
subject.broadcast_change('Attack!')
