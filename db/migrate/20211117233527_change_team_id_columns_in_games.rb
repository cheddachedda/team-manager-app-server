class ChangeTeamIdColumnsInGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :home_id, :string
    remove_column :games, :away_id, :string

    add_column :games, :home_id, :string
    add_column :games, :away_id, :string
  end
end
