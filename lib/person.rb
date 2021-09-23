class Person

  attr_reader :name, :age, :intensity_max

  def initialize(data)
    @name = data["name"]
    @age = data["age"]
    @intensity_max = data["intensity_max"]
  end

  def adult?
    @age >= 18
  end

  def pep_talk
    @intensity_max += 1
  end
end
