class Mechanic
@@all=[]
  attr_reader :name, :specialty

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all<< self
end

  def self.all
  @@all
  end

  def cars
    Car.all.select {|car| car.mechanic==self}
  end

  def owners
    cars.map { |car| car.owner  }.uniq
  end

  def names_of_owners
    owners.map { |owner| owner.name  }.uniq
  end
end
