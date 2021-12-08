class Dealership
  attr_reader :name, :address, :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @inventory_count = 0
  end

  def add_car(car)
    @inventory << car
  end

  def inventory_count
    @inventory_count = @inventory.length
  end
end
