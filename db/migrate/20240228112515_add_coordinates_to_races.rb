class AddCoordinatesToRaces < ActiveRecord::Migration[7.1]
  def change
    add_column :races, :latitude, :float
    add_column :races, :longitude, :float
  end
end
