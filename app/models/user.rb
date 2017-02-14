class User < ApplicationRecord
  has_many posts
  has_many games

  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :password, length: {minimum: 6}
  has_secure_password
end
