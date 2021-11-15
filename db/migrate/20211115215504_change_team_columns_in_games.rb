class ChangeTeamColumnsInGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :home_id, :integer
    remove_column :games, :away_id, :integer

    add_column :games, :home, :string
    add_column :games, :away, :string
  end
end
