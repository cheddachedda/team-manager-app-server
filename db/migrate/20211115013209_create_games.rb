class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
    t.text :venue
    t.datetime :time
    t.integer :homescore
    t.integer :awayscore
    t.integer :home_id
    t.integer :away_id
    t.text :status
    t.integer :round
    t.integer :division
    t.integer :homevotes
    t.integer :awayvotes
    t.integer :homebalance
    t.integer :awaybalance
    t.integer :homedrinks_id
    t.integer :awaydrinks_id
    t.integer :homeavailible_id
    t.integer :awayavailible_id
  end
  end
end
