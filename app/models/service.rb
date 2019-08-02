class Service < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  validates :title, presence: true
  # validates :category, presence: true
  has_one :booking, dependent: :destroy
  belongs_to :user
end
