require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership).to be_a Dealership
  end

  it 'has no inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory).to eq([])
    expect(dealership.inventory_count).to eq(0)
  end

  it 'received shipment of cars' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)

    dealership.add_car(car_1)
    dealership.add_car(car_2)
    expect(dealership.inventory_count). to eq(2)
  end
end
