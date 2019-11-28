class Owner < ApplicationRecord
  has_many :pets
  belongs_to :user
  mount_uploader :photo, PhotoUploader
end
