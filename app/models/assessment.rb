class Assessment < ApplicationRecord
  belongs_to :user
  belongs_to :spot

  validates :rating, presence: true
  validates :quiet_rating, presence: true
end
