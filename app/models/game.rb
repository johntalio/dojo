class Game < ApplicationRecord
  belongs_to user
  belongs_to post

  validates :name, :platform, :esrb_rating, presence: true
end
