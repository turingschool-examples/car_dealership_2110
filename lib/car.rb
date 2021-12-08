class Car
  attr_reader :car, :make, :model, :monthly_payment,
  :loan_length, :color
  def initialize(make, model, loan_length)
    @car = car
    @make = "Ford"
    @model = "Mustang"
    @loan_length = 36
    @monthly_payment = 1500
    @color = nil
  end

  def total_cost
    @monthly_payment * @loan_length
  end

  # def color
  #   @car = nil
  # end

  def paint!(color)
    @color = :blue
  end
end
