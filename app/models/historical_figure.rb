class HistoricalFigure < ApplicationRecord
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
