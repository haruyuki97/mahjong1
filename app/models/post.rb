class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :favorites
  has_many :users, through: :favorites
end
