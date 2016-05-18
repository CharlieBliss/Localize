class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :url
      t.integer :track_number
      t.string :duration
      t.integer :artist_id, index:true, null: false
      t.integer :album_id, index: true, null: false

    end
  end
end
