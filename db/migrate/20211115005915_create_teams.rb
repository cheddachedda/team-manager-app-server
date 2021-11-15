class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :division
      t.integer :captain_id

      t.timestamps
    end
  end
end
