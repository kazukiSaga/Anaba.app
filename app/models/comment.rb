class Comment < ApplicationRecord
  mount_uploaders :images, MemoryImageUploader

  belongs_to :user
  belongs_to :spot
  has_many :memories

  validates :title, presence: { message: "タイトルを入力してください" },
                    length: { maximum: 40, too_long: "タイトルは%{count}文字以内で入力してください" }
  validates :body, presence: { message: "本文を入力してください" },
                  length: { maximum: 300, too_long: "本文は%{count}文字以内で入力してください" }

  validate :validate_image_format

  private

  def validate_image_format
    return if images.blank?

    allowed_types = %w[image/jpeg image/jpg image/png image/gif]

    images.each do |image|
      next if image.blank? || image.file.nil? || image.file.content_type.nil?

      unless allowed_types.include?(image.file.content_type)
        errors.add(:images, "対応形式は JPG / JPEG / PNG / GIF のみです。")
      end
    end
  end
end
