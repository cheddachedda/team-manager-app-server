class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.integer :team_id
      t.boolean :admin, default: false
      t.boolean :captain, default: false
      t.integer :balance, default: 0
      t.integer :fines, default: 0

      t.timestamps
    end
  end
end
