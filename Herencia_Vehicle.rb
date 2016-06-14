class Vehicle

attr_accessor :number_of_wheels, :color, :age, :color

  def what_am_i?
    # Este método va a ser utilizado por varias clases y deberá regresar 
    # el nombre de la clase desde la cual se corrió.
    # ej.
    # bocho = Car.new
    # bocho.what_am_i? => Car
    self.class
  end

  def age!
    true
  end

end

class Motorized < Vehicle
attr_accessor :has_motor, :tank_size, :refuel, :number_of_gears

end

class Motorbike < Motorized
  def age
    4
  end
  def initialize
    @number_of_wheels = 2
    @color = 'yellow'
  end
  
  
end

class Car < Motorized
  def age
    5
  end
  def initialize
    @color = 'silver'
    @number_of_wheels = 4
  end
end

class Bicycle < Vehicle
  def initialize(number)
    @number_of_gears = number 
    @color = "red"
    @number_of_wheels = 2
  end
  
  def age
    6
  end
end

class Skateboard < Vehicle
  def age
    1
  end
  def initialize
    @color = "gray"
    @number_of_wheels = 4
  end
end

moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new

vehicles = [moto, car, bike, skateboard]#


vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.what_am_i?} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tNumber of wheels: #{vehicle.number_of_wheels}" 
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
end