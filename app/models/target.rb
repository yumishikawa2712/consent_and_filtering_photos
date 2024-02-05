class Target < ApplicationRecord
  belongs_to :customer
  attribute :photo_consent, :boolean, default: false
  validates :name, presence: true
end
