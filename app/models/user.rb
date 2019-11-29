class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # adoption chain for ownership
  has_one :owner, dependent: :destroy
  has_many :pets, through: :owner

  # adoption for adopting
  has_many :adoptions
end
