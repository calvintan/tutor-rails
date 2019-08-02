Booking.destroy_all if Rails.env.development?
Service.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

CATEGORY = ["chinese", "english", "math", "coding", "korean", "science"]
DIFFICULTY = ["beginner", "intermediate", "master"]
ADDRESS = ["No.333 Renmin Rd, Shanghai", "No.55, Century Avenue, Shanghai", "Shanghai World Financial Center, Shanghai", "No.480 Sichuan Rd (M), Shanghai", "Fujian Middle Road No.215 (Jinhankou Road), Shanghai", "No.35 Yunnan Middle Rd, Shanghai"]

7.times do
  u = User.create!(
    open_id: Faker::Name.name)
  s = Service.create!(
    title: Faker::Educator.course_name,
    category: CATEGORY.sample,
    description: Faker::Quote.most_interesting_man_in_the_world,
    time: Faker::Time.forward(23, :day),
    location: ADDRESS.sample,
    difficulty: DIFFICULTY.sample,
    user: u
  )
    Booking.create!(
      service: s,
      user: u
    )
end
