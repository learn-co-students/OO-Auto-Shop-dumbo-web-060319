class Car
@@all=[]
  attr_reader :make, :model, :classification, :owner , :mechanic

  def initialize(make, model, classification,owner,mechanic)
    @make = make
    @model = model
    @owner=owner
    @mechanic=mechanic
    @classification = classification
    @@all<< self
  end

  def self.all
  @@all
  end

  def self.all_classifications
  all.map { |car| car.classification  }.uniq
  end

  def self.list_of_mechanics(speciality)
    Mechanic.all.select{|mechanic| mechanic.specialty==speciality}
  end
end
