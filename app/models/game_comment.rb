class GameComment < ApplicationRecord
  belongs_to :user
  belongs_to :game

  validates :comment, presence: true
  validates :comment, length: {in: 1..200}
end
