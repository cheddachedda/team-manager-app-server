class ChangeColumnsInTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :game_ids, :integer, array: true, default: []
  end
end
