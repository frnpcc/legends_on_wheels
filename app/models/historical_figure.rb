class HistoricalFigure < ApplicationRecord
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }

  include PgSearch::Model
  pg_search_scope :search_by_name__category_and_era,
    against: [:name, :category, :era],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
