require 'rspec'
require './lib/ride'
require './lib/person'

describe Ride do
  it 'exists' do
    millennium = Ride.new("Millennium Force", 5, 8)
    expect(millennium).to be_an_instance_of(Ride)
  end

  xit 'attributes' do
    millennium = Ride.new("Millennium Force", 5, 8)
    expect(millennium.name).to eq("Millennium Force")
    expect(millennium.cost).to eq 5
    expect(millennium.intensity).to eq 8
    expect(millennium.passengers).to eq([])
  end

  xit 'does things' do
    aurelia = Person.new({"name" => "Aurelia", "age" => 18,
      "intensity_max" => 5})
    taylor = Person.new({"name" => "Taylor", "age" => 12,
       "intensity_max" => 3})
    lauren = Person.new({"name" => "Lauren", "age" => 20,
       "intensity_max" => 8})

    millennium.add_passenger(aurelia)
    millennium.add_passenger(taylor)
    millennium.add_passenger(lauren)

    expect(millennium.passengers).to eq([aurelia, taylor, lauren])
  end
end
