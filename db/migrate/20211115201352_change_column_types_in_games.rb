class ChangeColumnTypesInGames < ActiveRecord::Migration[5.2]
  def change
    # The web-scraped division data are strings
    change_column :games, :division, :string

    # Change from integers to integer arrays
    remove_column :games, :homevotes, :integer
    remove_column :games, :awayvotes, :integer
    remove_column :games, :homeavailible_id, :integer
    remove_column :games, :awayavailible_id, :integer

    add_column :games, :home_votes, :integer, array: true, default: []
    add_column :games, :away_votes, :integer, array: true, default: []
    add_column :games, :home_available_ids, :integer, array: true, default: []
    add_column :games, :away_available_ids, :integer, array: true, default: []
  end
end
