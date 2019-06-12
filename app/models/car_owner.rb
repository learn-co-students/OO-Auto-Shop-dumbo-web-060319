class CarOwner
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def cars 
    Car.all.select { |car| car.owner == self }
  end

  def mechanics 
    cars.map { |car| car.mechanic }
  end

  
  
  
  def self.all 
    @@all 
  end

  def self.average_cars_own
    cars_owned = @@all.inject { |cars_total, owner| cars_total + owner.cars.length }
    cars_owned / all.length
  end


end
