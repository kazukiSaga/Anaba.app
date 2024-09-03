class Tag < ApplicationRecord
  has_many :spots
  has_many :user_tags

  validates :name, presence: true, uniqueness: true, length: { maximum: 10 }
end
