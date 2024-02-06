class Target < ApplicationRecord
  belongs_to :customer
  attribute :photo_consent, :boolean, default: false
  has_many :face_photos, dependent: :destroy
  accepts_nested_attributes_for :face_photos, allow_destroy: true

  validates :name, presence: true
  validate :three_face_photos

  pravate

  def three_face_photos
    if photo_consent == false && face_photos.size != 3
      errors.add(:face_photos, 'You must upload exactly 3 face photos.')
    end
  end
end
