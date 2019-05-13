# Empty database
Flat.destroy_all

# Seed the flats
20.times do
  Flat.create!({
    name: Faker::Lorem.sentence(6),
    address: Faker::Address.full_address,
    price_per_night: rand(30..100),
    number_of_guests: rand(1..5)
  })
end
