class Pet < ApplicationRecord
  belongs_to :owner
  has_many :adoptions, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
