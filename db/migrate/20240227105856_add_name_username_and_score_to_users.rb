class AddNameUsernameAndScoreToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :score, :integer
  end
end
