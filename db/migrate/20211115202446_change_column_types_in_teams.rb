class ChangeColumnTypesInTeams < ActiveRecord::Migration[5.2]
  def change
    # The web-scraped division data are strings
    change_column :teams, :division, :string
  end
end
