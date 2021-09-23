require './lib/person'

class Ride

  attr_reader :name, :cost, :intensity, :passengers

  def initialize(name, cost, intensity)
    @name = name
    @cost = cost
    @intensity = intensity
    @passengers = []
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def percentage_adults
    (((@passengers.find_all do |passenger|
      passenger.adult? == true
    end).count / @passengers.count.to_f) * 100).round
  end
end
