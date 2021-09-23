require 'rspec'
require './lib/person'

describe Person do
  it 'exists' do
    aurelia = Person.new({"name" => "Aurelia", "age" => 18,
      "intensity_max" => 5})
    expect(aurelia).to be_an_instance_of(Person)
  end

  it 'attributes' do
    aurelia = Person.new({"name" => "Aurelia", "age" => 18,
       "intensity_max" => 5})
    expect(aurelia.name).to eq("Aurelia")
    expect(aurelia.age).to eq 18
    expect(aurelia.intensity_max).to eq 5
  end

  it 'adult?' do

    aurelia = Person.new({"name" => "Aurelia",
      "age" => 18, "intensity_max" => 5})
    taylor = Person.new({"name" => "Taylor",
      "age" => 12, "intensity_max" => 3})

    expect(aurelia.adult?).to eq true
    expect(taylor.adult?).to eq false
  end

  it 'gives pep talks to increase intensity_max' do

    aurelia = Person.new({"name" => "Aurelia",
      "age" => 18, "intensity_max" => 5})

    aurelia.pep_talk

    expect(aurelia.intensity_max).to eq 6
  end
end
