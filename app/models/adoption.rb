class Adoption < ApplicationRecord
  belongs_to :owner
  belongs_to :pet
end
