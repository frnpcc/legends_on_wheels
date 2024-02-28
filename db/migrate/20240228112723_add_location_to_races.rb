class AddLocationToRaces < ActiveRecord::Migration[7.1]
  def change
    add_column :races, :location_enum, :integer
  end
end
