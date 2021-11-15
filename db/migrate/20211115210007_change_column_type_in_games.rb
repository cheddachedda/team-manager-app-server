class ChangeColumnTypeInGames < ActiveRecord::Migration[5.2]
  def change
    # The web-scraped division data are strings
    change_column :games, :round, :string
  end
end
