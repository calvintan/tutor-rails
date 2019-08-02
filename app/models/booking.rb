class Booking < ApplicationRecord
  # validates :user, uniqueness: { scope: :service, message: "Tutor can only teach one class at a time" }
  belongs_to :service
  belongs_to :user
end
