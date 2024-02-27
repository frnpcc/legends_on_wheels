class AddHistoricalFigureToRaces < ActiveRecord::Migration[7.1]
  def change
    add_reference :races, :historical_figure, null: false, foreign_key: true
  end
end
