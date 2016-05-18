class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name, null: false
      t.string :genre
      t.string :url, null: false
      t.string :image_url
      t.integer :artist_id, index: true
      t.decimal :price, precision: 8, scale: 2

    end
  end
end
