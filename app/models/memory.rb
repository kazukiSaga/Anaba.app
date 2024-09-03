class Memory < ApplicationRecord
  belongs_to :comment
  has_many_attached :avatars

  validate :validate_avatars

  private

  def validate_avatars
    if avatars.length > 4
      errors.add(:avatars, "は4枚以内にしてください")
    end

    avatars.each do |avatar|
      unless avatar.blob.content_type.in?(%w(image/jpeg image/png))
        errors.add(:avatars, 'はjpegまたはpng形式でアップロードしてください')
      end

      if avatar.blob.byte_size > 5.megabytes
        errors.add(:avatars, "は1つのファイル5MB以内にしてください")
      end
    end
  end
end