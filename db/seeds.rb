# Empty database
Flat.destroy_all

# names

name = [
  "Immaculate Architect's Townhouse with Terrace",
  "BRIGHT MODERN & CLEAN 1 BED with 24h CHECK IN",
  "Bright, Comfortable Room in Hospitable, Gay Household",
  "PRIVATE ROOM IN HOUSE",
  "NYC STYLE 1500 Sqft PENTHOUSE LOFT - 50ft to Tube",
  "Cosy room in Russell Square, Shared."
]

# Seed the flats
20.times do
  Flat.create!({
    name: name.sample,
    address: Faker::Address.full_address,
    description: Faker::Lorem.sentence(20),
    price_per_night: rand(30..100),
    number_of_guests: rand(1..5),
    photo_url: 'https://source.unsplash.com/1600x900/?house'
  })
end
