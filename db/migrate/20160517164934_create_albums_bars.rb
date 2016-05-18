class CreateAlbumsBars < ActiveRecord::Migration
  def change
    create_table :albums_bars do |t|
      t.integer :album_id, null: false, index: true
      t.integer :bar_id, null: false, index: true
    end
  end
end
