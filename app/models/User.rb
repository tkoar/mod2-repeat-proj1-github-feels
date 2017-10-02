class User < ApplicationRecord
  validates :email, uniqueness: true
  validates :email, :name, :password, presence: {message: "must fill in all fields"}
  has_secure_password
  has_many :repos
  has_many :feelings
  
end
