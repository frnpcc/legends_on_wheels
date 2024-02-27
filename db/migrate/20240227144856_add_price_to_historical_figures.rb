class AddPriceToHistoricalFigures < ActiveRecord::Migration[7.1]
  def change
    add_column :historical_figures, :price, :integer
  end
end
