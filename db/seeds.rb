# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Service.destroy_all if Rails.env.development?

7.times do
  u = User.create!(
    open_id: Faker::Name.name)
  s = Service.create!(
    title: Faker::Educator.course_name,
    category: Faker::Educator.subject,
    description: Faker::TvShows::StrangerThings.quote,
    user: u
    )
    Booking.create!(
      time: Faker::Time.forward(23, :day),
      location: Faker::Address.street_address,
      service: s,
      user: u
      )
end
