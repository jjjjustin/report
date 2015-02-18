10.times do
  user = User.create(first_name: Faker::Name.first_name,
                     last_name: Faker::Name.last_name,
                     age: rand(18...30),
                     favorite_color: %w(red orange yellow green blue purple pink).sample,)
  3.times do
    user.meals.create(name: Faker::Hacker.noun,
                      cost: rand(5..99))
  end
  2.times do
    user.pets.create(name: %w(fido fluffy whiskers beans izzy penny pepper).sample,
                     kind: %w(rabbit dog cat bird turtle armadillo).sample,
                     weight: rand(2..150))
  end
end
