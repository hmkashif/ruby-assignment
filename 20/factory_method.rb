# frozen_string_literal: true

# Vehicle Class
class Vehicle
  def initialize; end

  def drive_vehicle; end

  def self.create_vehicle(type)
    case type
    when 1
      Bike.new
    when 2
      Car.new
    when 3
      Truck.new
    else
      puts 'Invalid choice'
    end
  end
end

# Bike Class
class Bike < Vehicle
  def initialize; end

  def drive_vehicle
    puts 'I am driving bike'
  end
end

# Car Class
class Car < Vehicle
  def initialize; end

  def drive_vehicle
    puts 'I am driving car'
  end
end

# Truck Class
class Truck < Vehicle
  def initialize; end

  def drive_vehicle
    puts 'I am driving truck'
  end
end

# main

puts '1. Bike'
puts '2. Car'
puts '3. Truck'
puts '4. None'
print 'Which of the above you want to drive: '
type = gets.to_i

vehicle = Vehicle.create_vehicle(type)

vehicle.drive_vehicle
