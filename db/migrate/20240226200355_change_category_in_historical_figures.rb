class ChangeCategoryInHistoricalFigures < ActiveRecord::Migration[7.1]
  def change
    remove_column :historical_figures, :name, :text
    remove_column :historical_figures, :era, :text
    remove_column :historical_figures, :image_url, :text
    remove_column :historical_figures, :category, :text
    add_column :historical_figures, :name, :string
    add_column :historical_figures, :era, :string
    add_column :historical_figures, :image_url, :string
    add_column :historical_figures, :category, :string
  end
end
