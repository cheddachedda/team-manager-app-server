class ChangeColumnsInGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :status, :text

    remove_column :games, :round, :string
    add_column :games, :round_no, :integer
  end
end
