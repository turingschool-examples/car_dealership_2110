# Car Dealership

## Instructions

* Fork this Repository
* Clone YOUR fork
* Compete the activity below
* Push your solution to your fork
* Submit a pull request from your repository to the turingschool-examples repository
* Make sure to put your name in your PR!

## Iteration 2

Use TDD to create a `Dealership` class that responds to the following interaction
pattern:

(Where you see something like `#<Dealership:0x00007fccd30375f8...>`, this is
shorthand for a full dealership object with that object identifier - we have
replaced any attributes with `...` for readability.)

```ruby

pry(main)> require './lib/car'
#=> true

pry(main)> require './lib/dealership'
#=> true

pry(main)> dealership = Dealership.new("Acme Auto", "123 Main Street")
#=> #<Dealership:0x00007fccd30375f8...>

pry(main)> dealership.inventory
#=> []

pry(main)> dealership.inventory_count
#=> 0

pry(main)> car_1 = Car.new("Ford Mustang", 1500, 36)
#=> #<"Ford Mustang">

pry(main)> car_2 = Car.new("Toyota Prius", 1000, 48)
#=> #<"Toyota Prius">

pry(main)> dealership.add_car(car_1)

pry(main)> dealership.add_car(car_2)

pry(main)> dealership.inventory
#=> [#<"Ford Mustang">, #<"Toyota Prius">]

pry(main)> dealership.inventory_count
#=> 2
```

## Iteration 3

Use TDD to update your `Dealership` class so that it responds to the following
interaction pattern:

* A dealership has inventory if it has more than one car.

```ruby
pry(main)> require './lib/car'
#=> true

pry(main)> require './lib/dealership
#=> true

pry(main)> dealership = Dealership.new("Acme Auto", "123 Main Street")
#=> #<Dealership:0x00007fccd30375f8...>

pry(main)> dealership.has_inventory?
#=> false

pry(main)> car_1 = Car.new("Ford Mustang", 1500, 36)
#=> #<Car:0x00007fccd29b5720...>

pry(main)> car_2 = Car.new("Toyota Prius", 1000, 48)
#=> #<"Toyota Prius">

pry(main)> car_3 = Car.new("Toyota Tercel", 500, 48)
#=> #<Car:0x00007fccd383c2d0...>

pry(main)> car_4 = Car.new("Chevrolet Bronco", 1250, 24)
#=> #<Car:0x00007fccd297dc30...>

pry(main)> dealership.add_car(car_1)

pry(main)> dealership.add_car(car_2)

pry(main)> dealership.add_car(car_3)

pry(main)> dealership.add_car(car_4)

pry(main)> dealership.cars_by_make("Toyota")
#=> [#<car:0x00007fccd2985f48...>, #<car:0x00007fccd383c2d0...>]

pry(main)> dealership.cars_by_make("Ford")
#=> [#<Car:0x00007fccd29b5720...>]

pry(main)> dealership.total_value
#=> 156000

pry(main)> dealership.details
#=> {"total_value" => 156000, "address" => "123 Main Street"}
```

## Iteration 4

Use TDD to update your `Dealership` class so that it responds to the following
interaction pattern:

* Car price should be from cheapest to most expensive.

```ruby
pry(main)> require './lib/car'
#=> true

pry(main)> require './lib/dealership
#=> true

pry(main)> dealership = Dealership.new("Acme Auto", "123 Main Street")
#=> #<Dealership:0x00007fccd30375f8...>

pry(main)> car_1 = Car.new("Ford Mustang", 1500, 36)
#=> #<Car:0x00007fccd29b5720...>

pry(main)> car_2 = Car.new("Toyota Prius", 1000, 48)
#=> #<"Toyota Prius">

pry(main)> car_3 = Car.new("Toyota Tercel", 500, 48)
#=> #<Car:0x00007fccd383c2d0...>

pry(main)> car_4 = Car.new("Chevrolet Bronco", 1250, 24)
#=> #<Car:0x00007fccd297dc30...>

pry(main)> dealership.add_car(car_1)

pry(main)> dealership.add_car(car_2)

pry(main)> dealership.add_car(car_3)

pry(main)> dealership.add_car(car_4)

pry(main)> dealership.average_price_of_car
#=> "39,000"

pry(main)> dealership.cars_sorted_by_price
#=> [#<Car:0x00007fccd383c2d0...>, #<Car:0x00007fccd297dc30...>, #<"Toyota Prius">, #<Car:0x00007fccd29b5720...>]

pry(main)> dealership.inventory_hash
#=> {"Ford"=> [#<Car:0x00007fccd29b5720...>],
"Toyota"=> [#<"Toyota Prius">, #<Car:0x00007fccd383c2d0...>],
"Chevrolet"=> [#<Car:0x00007fccd297dc30...>]}

```
