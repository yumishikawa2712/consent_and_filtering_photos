class FacePhoto < ApplicationRecord
  belongs_to :target
  has_many_attached :images
end
