class Post < ApplicationRecord
  belongs_to :user
  has_many :games

  validates :title, :body, presence: true
  validates :title, length: {minimum: 3}
  validates :body, length: {in: 5..100}
end
