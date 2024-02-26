class CreateHistoricalFigures < ActiveRecord::Migration[7.1]
  def change
    create_table :historical_figures do |t|
      t.text :name
      t.text :bio
      t.text :era
      t.text :image_url
      t.text :category
      t.integer :car_type

      t.timestamps
    end
  end
end
