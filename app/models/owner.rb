class Owner < ApplicationRecord
  has_many :pets, dependent: :destroy
  has_many :adoptions, through: :pets
  belongs_to :user
  mount_uploader :photo, PhotoUploader
end
