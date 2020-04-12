class User < ApplicationRecord
  attachment :profile_imege, destroy: false
  has_many :books
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :profile_image, destroy: false
end
