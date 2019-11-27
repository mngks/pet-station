puts "Dropping the seeds"
Pet.destroy_all if Rails.env.development? || Rails.env.test?

puts "Creating the seeds"
Pet.create!(
  name: "Lemonade",
  image_url: "https://source.unsplash.com/featured/?dog",
  description: "best friend ever",
  category: "dog",
  age: 3,
  gender: "male",
  HDB_approved: true,
  owner: Owner.first
)
Pet.create!(
  name: "Spritzer",
  image_url: "https://source.unsplash.com/featured/?dog",
  description: "best best friend ever",
  category: "dog",
  age: 4,
  gender: "male",
  HDB_approved: true,
  owner: Owner.first
)
Pet.create!(
  name: "Minty",
  image_url: "https://source.unsplash.com/featured/?dog",
  description: "best best best friend ever",
  category: "dog",
  age: 5,
  gender: "male",
  HDB_approved: true,
  owner: Owner.first
)
