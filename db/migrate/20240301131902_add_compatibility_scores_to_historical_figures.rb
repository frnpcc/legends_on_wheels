class AddCompatibilityScoresToHistoricalFigures < ActiveRecord::Migration[7.1]
  def change
    add_column :historical_figures, :car_compatibility, :jsonb, default: {}
    add_column :historical_figures, :strength, :integer, default: 0
  end
end
