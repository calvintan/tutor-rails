class Service < ApplicationRecord
  validates :title, presence: true
  validates :category, presence: true
  has_one :booking, dependent: :destroy
  belongs_to :user
end
