puts "Dropping the seeds"
Pet.destroy_all if Rails.env.development? || Rails.env.test?

puts "Creating the seeds"
Pet.create!(
  name: "Lemonade"
)
Pet.create!(
  name: "Spritzer"
)
Pet.create!(
  name: "Minty"
)
