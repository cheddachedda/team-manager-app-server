class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.integer :team_id
      t.boolean :admin, default: false
      t.boolean :captain, default: false
      t.integer :balance
      t.integer :fines
      t.integer :votes

      t.timestamps
    end
  end
end
