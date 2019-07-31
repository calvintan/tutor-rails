Service.destroy_all if Rails.env.development?

CATEGORY = ["chinese", "english", "math", "coding", "korean", "science"]
DIFFICULTY = ["beginner", "intermediate", "master"]
7.times do
  u = User.create!(
    open_id: Faker::Name.name)
  s = Service.create!(
    title: Faker::Educator.course_name,
    category: CATEGORY.sample,
    description: Faker::TvShows::StrangerThings.quote,
    time: Faker::Time.forward(23, :day),
    location: Faker::Address.street_address,
    difficulty: DIFFICULTY.sample
    user: u
    )
    Booking.create!(
      service: s,
      user: u
      )
end
