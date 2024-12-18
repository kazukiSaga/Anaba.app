class SpotTag < ApplicationRecord
  belongs_to :spot
  belongs_to :tag

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "spot_id", "tag_id", "updated_at"]
   end
end
