# class Photo < ApplicationRecord
#   belongs_to :post

#   validates :image, presence: true
#   mount_uploader :image, ImageUploader
# end
class Photo < ApplicationRecord
  belongs_to :post

  validates :image, presence: true

  # ここを追加
  mount_uploader :image, ImageUploader
end
