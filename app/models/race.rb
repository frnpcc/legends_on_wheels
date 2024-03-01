class Race < ApplicationRecord
  belongs_to :historical_figure
  belongs_to :user

  validates :user_id, :historical_figure_id, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  enum car_type: {
    bmw_m4_competition: 0,
    ford_mustang: 1,
    vw_bus: 2,
    mini_cooper: 3,
    tesla_model_s: 4,
    porsche911: 5,
    ferrari458: 6,
    lamborghini_huracan: 7,
    bugatti_veyron: 8,
    koenigsegg_one: 9,
    mclaren_p1: 10
  }, _prefix: true

  enum location_enum: {
    madrid: 0,
    berlin: 1,
    paris: 2
  }, _prefix: true
end
