class ChangeColumnHomeToHomeId < ActiveRecord::Migration[5.2]
  def change
    rename_column :games, :home, :home_id
    rename_column :games, :away, :away_id
  end
end
