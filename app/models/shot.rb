class Shot < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader

  validates :photo, presence: true
  validates :price_cents, presence: true

  monetize :price_cents
end
