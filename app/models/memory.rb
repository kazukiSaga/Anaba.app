class Memory < ApplicationRecord
  belongs_to :comment
  mount_uploader :image, MemoryImageUploader
end