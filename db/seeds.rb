require "faker"

10.times do
  Flat.create(name: Faker::Dessert.topping, location: Faker::Address.country)
end
