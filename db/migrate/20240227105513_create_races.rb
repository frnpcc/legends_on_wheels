class CreateRaces < ActiveRecord::Migration[7.1]
  def change
    create_table :races do |t|
      #t.references :historical_figure, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :result

      t.timestamps
    end
  end
end
