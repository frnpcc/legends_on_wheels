class Race < ApplicationRecord
  belongs_to :historical_figure
  belongs_to :user

  validates :user_id, :historical_figure_id, presence: true

  enum car_type: {
    bmw_m4_competition: 0,
    ford_mustang: 1,
    vw_bus: 2
  }, _prefix: true

  enum location_enum: {
    madrid: 0,
    berlin: 1,
    paris: 2
  }, _prefix: true
end
