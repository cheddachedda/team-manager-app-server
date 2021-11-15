class ChangeColumnNamesInGames < ActiveRecord::Migration[5.2]
  def change
    # :datetime is a more accurate description, and it also reserves .date and .time method names for the model
    rename_column :games, :time, :datetime

    # Add underscores
    rename_column :games, :homescore, :home_score
    rename_column :games, :awayscore, :away_score
    rename_column :games, :homebalance, :home_balance
    rename_column :games, :awaybalance, :away_balance
    rename_column :games, :homedrinks_id, :home_drinks_id
    rename_column :games, :awaydrinks_id, :away_drinks_id
  end
end
