# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :rented, :cargo_contents

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @cargo_contents = []
  end

  def rent!
    self.rented = true
  end

end

class CargoLoader
  
  MAX_CARGO_ITEMS = 10

  def initialize(bike)
    @bike = bike
  end

  def add_cargo(item)
    @bike.cargo_contents << item
  end

  def remove_cargo(item)
    @bike.cargo_contents.remove(item)
  end

  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - @bike.cargo_contents.size
  end

end
  