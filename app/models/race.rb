class Race < ApplicationRecord
  belongs_to :historical_figure
  belongs_to :user

  validates :user_id, :historical_figure_id, presence: true

  enum car_type: { bmw: 0, volkswagen_bus: 1, ford_mustang: 2 }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
