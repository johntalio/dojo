class Game < ApplicationRecord
  belongs_to :user

  validates :name, :platform, :esrb_rating, presence: true
end
