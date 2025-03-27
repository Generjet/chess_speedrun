class ChessSoldier < ApplicationRecord
  has_many :inventories

  validates :rank, presence: true
  validates :color, presence: true

  enum soldier_state: { available: 0, captured: 1, dead: 2 }
end
