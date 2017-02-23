class PostComment < ApplicationRecord
  belongs_to :post

  validates :comment, presence: true
  validates :comment, length: {in: 1..200}
end
