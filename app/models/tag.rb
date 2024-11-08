class Tag < ApplicationRecord
  has_many :spot_tags
  has_many :spots, through: :spot_tags
  has_many :user_tags

  validates :name, presence: true, uniqueness: true, length: { maximum: 10 }
end
