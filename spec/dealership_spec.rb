require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  before(:each) do
    @dealership = Dealership.new("Acme Auto", "123 Main Street")
    @car_1 = Car.new("Ford Mustang", 1500, 36)
    @car_2 = Car.new("Toyota Prius", 1000, 48)
    @car_3 = Car.new("Toyota Tercel", 500, 48)
    @car_4 = Car.new("Chevrolet Bronco", 1250, 24)
  end

  it 'exists' do
    expect(@dealership).to be_instance_of Dealership
  end

  it 'starts with no inventory' do
    expect(@dealership.has_inventory?).to be false
  end

  describe 'handling inventory' do
    before(:each) do
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)
      @dealership.add_car(@car_3)
      @dealership.add_car(@car_4)
    end

    it 'can add cars to inventory' do
      expect(@dealership.has_inventory?).to be true
    end

    it 'can return cars by make' do
      expect(@dealership.cars_by_make('Toyota')).to eq([@car_2, @car_3])
      expect(@dealership.cars_by_make("Ford")).to eq([@car_1])
    end

    xit 'can return the total value of all cars in inventory' do
      dealership.total_value
    end

    xit 'can return its details (total value, address) in a hash' do
      dealership.details
    end
  end


end
