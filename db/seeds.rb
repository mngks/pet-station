puts "Dropping the seeds"
User.destroy_all if Rails.env.development? || Rails.env.test?


puts "Creating the seeds"

puts 'create users'
User.create(
  email: 'najihahtalib@gmail.com',
  password: 'nopassword' ,
  password_confirmation: 'nopassword'
)


User.create(
  email: 'mike@gmail.com',
  password: 'nopassword' ,
  password_confirmation: 'nopassword'
)


puts "create owner profile for first user"
Owner.create(
  first_name: 'Najihah',
  last_name: 'Talib',
  user: User.first
)

puts 'create pets'
Pet.create!(
  name: "Lemonade",
  image_url: "https://source.unsplash.com/featured/?dog",
  description: "best friend ever",
  category: "Terrapins",
  # age: September 2018,
  gender: "male",
  HDB_approved: true,
  owner: Owner.first
)
Pet.create!(
  name: "Spritzer",
  image_url: "https://source.unsplash.com/featured/?dog",
  description: "best best friend ever",
  category: "Dogs",
  # age: January 2015,
  gender: "male",
  HDB_approved: true,
  owner: Owner.first
)
Pet.create!(
  name: "Minty",
  image_url: "https://source.unsplash.com/featured/?dog",
  description: "best best best friend ever",
  category: "Dogs",
  # age: February 2001,
  gender: "male",
  HDB_approved: true,
  owner: Owner.first
)
Pet.create!(
  name: "Coco",
  image_url: "https://source.unsplash.com/featured/?dog",
  description: "best best best friend ever",
  category: "Cats",
  # age: November 2019,
  gender: "male",
  HDB_approved: true,
  owner: Owner.first
)
