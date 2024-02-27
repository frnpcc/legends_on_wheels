class AddRaceDateToRaces < ActiveRecord::Migration[7.1]
  def change
    add_column :races, :race_date, :datetime
    add_column :races, :car_type, :integer
  end
end
