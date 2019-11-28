class Pet < ApplicationRecord
  belongs_to :owner
  mount_uploader :photo, PhotoUploader
end
