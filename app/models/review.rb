class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, inclusion: 0..5, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :content, presence: true
end
