class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :name, null: false
      t.string :password_digest, null: false
      t.string :pin, null: false
      t.string :address
      t.text :about

      t.timestamps null: false
    end
  end
end
