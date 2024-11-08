class Spot < ApplicationRecord  
  belongs_to :user
  belongs_to :prefecture
  has_many :spot_tags
  has_many :tags, through: :spot_tags
  has_many :assessments
  has_many :comments

  validates :body, presence: true, length: { in: 1..140 }
  validates :city, presence: true
  validates :name, presence: true

  # 必須の関連付けのバリデーション
  validates :prefecture, presence: true

  accepts_nested_attributes_for :assessments, allow_destroy: true

   # 検索可能な属性を指定
  def self.ransackable_attributes(auth_object = nil)
    ["average_quiet_rating", "average_rating", "body", "city", "created_at", "id", "latitude", "longitude", "name", "prefecture_id", "updated_at", "user_id","created_at", "id", "spot_id", "tag_id", "updated_at"]
  end

  # 検索可能な関連を指定
  def self.ransackable_associations(auth_object = nil)
    ["assessments", "comments", "prefecture", "spot_tags", "tags", "user"]
  end
end
