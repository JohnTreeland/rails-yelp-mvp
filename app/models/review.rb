class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { in: (0..5) }
  # validates :rating, comparison: { greater_than_or_equal_to: 0 }
  # validates :rating, comparison: { less_than_or_equal_to: 5 }
end