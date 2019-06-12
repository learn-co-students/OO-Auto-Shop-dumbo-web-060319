require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

owner1=CarOwner.new("samip")
owner2=CarOwner.new("tony")
owner3=CarOwner.new("gia")


mechanic1=Mechanic.new("samip","antique")
mechanic2=Mechanic.new("ali","clunker")
mechanic3=Mechanic.new("brandon","exotic")
mechanic4=Mechanic.new("hero","exotic")

car1=Car.new(2012,"aaa","antique",owner1,mechanic1)
car2=Car.new(2011,"bbb","antique",owner1,mechanic1)
car3=Car.new(2014,"ccc","exotic",owner1,mechanic3)
car4=Car.new(2012,"ddd","antique",owner2,mechanic1)
car5=Car.new(2013,"eee","clunker",owner3,mechanic2)
car1=Car.new(2012,"aaa","antique",owner2,mechanic1)
car2=Car.new(2011,"bbb","antique",owner1,mechanic1)
car3=Car.new(2014,"ccc","exotic",owner2,mechanic3)
car4=Car.new(2012,"ddd","antique",owner3,mechanic1)
car5=Car.new(2013,"eee","clunker",owner1,mechanic2)




binding.pry
