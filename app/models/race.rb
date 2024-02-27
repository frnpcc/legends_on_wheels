class Race < ApplicationRecord
  belongs_to :historical_figure
  belongs_to :user

  validates :user_id, :historical_figure_id, presence: true
end
