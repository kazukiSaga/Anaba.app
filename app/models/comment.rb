class Comment < ApplicationRecord
  mount_uploaders :images, MemoryImageUploader

  belongs_to :user
  belongs_to :spot
  has_many :memories

  validates :title, presence: true, length: { maximum: 13 }
  validates :body, presence: true, length: { maximum: 140 }
end
