class Spot < ApplicationRecord
  belongs_to :user
  belongs_to :prefecture
  has_many :tags, through: :spot_tags
  has_many :assessments
  has_many :comments

  validates :body, presence: true, length: { in: 1..140 }
  validates :city, presence: true
  validates :name, presence: true

  # 必須の関連付けのバリデーション
  validates :prefecture, presence: true

  accepts_nested_attributes_for :assessments, allow_destroy: true

  def self.ransackable_attributes(auth_object = nil)
    ["name","prefecture_id"]
  end
end
