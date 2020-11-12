!# /usr/bin/env ruby

require_relative 'bike'

bike = Bike.new(1, :pink, 99.99)
cargoLoader = CargoLoader.new(bike)

cargoLoader.add_cargo(:apples)
cargoLoader.add_cargo(:water)
cargoLoader.add_cargo(:repair_kit)

puts "Space for #{cargoLoader.pannier_remaining_capacity} items left."

bike.rent!
