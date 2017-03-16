class Post < ApplicationRecord
  belongs_to :user
  has_many :post_comments

  validates :title, :body, presence: true
  validates :title, length: {minimum: 3}
  validates :body, length: {in: 5..300}
end
