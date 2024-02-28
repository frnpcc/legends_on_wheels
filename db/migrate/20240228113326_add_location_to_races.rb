class AddLocationToRaces < ActiveRecord::Migration[7.1]
  def change
    add_column :races, :location, :string
  end
end
