Service.destroy_all if Rails.env.development?

7.times do
  u = User.create!(
    open_id: Faker::Name.name)
  s = Service.create!(
    title: Faker::Educator.course_name,
    category: Faker::Educator.subject,
    description: Faker::TvShows::StrangerThings.quote,
    time: Faker::Time.forward(23, :day),
    location: Faker::Address.street_address,
    user: u
    )
    Booking.create!(
      service: s,
      user: u
      )
end
