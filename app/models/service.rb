class Service < ApplicationRecord
  validates :title, presence: true
  validates :category, presence: true
  belongs_to :user
end
