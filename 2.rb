class Car
  attr_reader :model, :year
  def initialize(model, year)
    @model = model
    @year = year
  end

end

car = Car.new('Camarooo', 2018)
puts "Mi auto favorito es un #{car.model} del año #{car.year}!"
