class User < ApplicationRecord
  has_secure_password
  has_many :repos
  has_many :feelings
end
