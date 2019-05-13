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

photo_url = [
  "https://images.unsplash.com/photo-1501183638710-841dd1904471?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
  "https://images.unsplash.com/photo-1460533893735-45cea2212645?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1449844908441-8829872d2607?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
  "https://images.unsplash.com/photo-1492138645880-160f6a5136fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
  "https://images.unsplash.com/photo-1463741408080-b210ee5227dc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1526&q=80"
]

# Seed the flats
20.times do
  Flat.create!({
    name: name.sample,
    address: Faker::Address.full_address,
    description: Faker::Lorem.sentence(20),
    price_per_night: rand(30..100),
    number_of_guests: rand(1..5),
    photo_url: photo_url.sample
  })
end
