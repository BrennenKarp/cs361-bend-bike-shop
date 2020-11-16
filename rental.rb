class Rental

  require_relative 'luggage'
  attr_reader :bike, :luggage
  
  def initialize(bike, extra_items)
    @bike = bike
    @luggage = Luggage.new(Luggage::DEFAULT_MAX_CAPACITY, extra_items, bike)
  end

  def price
    self.bike.price + (self.bike.weight * 2) + (self.luggage.weight * 2)
  end

  def weight
    self.bike.weight + self.luggage.weight
  end

end
