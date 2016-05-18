class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, limit: 20
      t.string :email, null: false
      t.string :password_digest
      t.integer :pin, null: false, limit: 6

      t.timestamps null: false
    end
  end
end
