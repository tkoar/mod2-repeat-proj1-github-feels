class Repo < ApplicationRecord
  has_many :feelings
  belongs_to :user
end
