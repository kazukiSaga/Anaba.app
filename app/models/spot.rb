class Spot < ApplicationRecord
  belongs_to :user
  belongs_to :prefecture
  belongs_to :tag
  has_many :assessments
  has_many :comments

  validates :name, presence: true, uniqueness: true, length: { maximum: 13 }
  validates :body, presence: true, length: { in: 1..140 }
  validates :city, presence: true

  # 必須の関連付けのバリデーション
  validates :prefecture, presence: true
end
