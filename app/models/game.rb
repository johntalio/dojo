class Game < ApplicationRecord
  belongs_to :user
  has_many :game_comments

  validates :name, :platform, :esrb_rating, presence: true
end
