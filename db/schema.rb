# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160517164934) do

  create_table "albums", force: :cascade do |t|
    t.string  "name",      limit: 255,                         null: false
    t.string  "genre",     limit: 255
    t.string  "url",       limit: 255,                         null: false
    t.string  "image_url", limit: 255
    t.integer "artist_id", limit: 4
    t.decimal "price",                 precision: 8, scale: 2
  end

  add_index "albums", ["artist_id"], name: "index_albums_on_artist_id", using: :btree

  create_table "albums_bars", force: :cascade do |t|
    t.integer "album_id", limit: 4, null: false
    t.integer "bar_id",   limit: 4, null: false
  end

  add_index "albums_bars", ["album_id"], name: "index_albums_bars_on_album_id", using: :btree
  add_index "albums_bars", ["bar_id"], name: "index_albums_bars_on_bar_id", using: :btree

  create_table "artists", force: :cascade do |t|
    t.string   "name",       limit: 255,   null: false
    t.text     "about",      limit: 65535
    t.string   "url",        limit: 255
    t.string   "image_url",  limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "bars", force: :cascade do |t|
    t.string   "name",            limit: 255,   null: false
    t.string   "password_digest", limit: 255,   null: false
    t.string   "pin",             limit: 255,   null: false
    t.string   "address",         limit: 255
    t.text     "about",           limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string  "name",         limit: 255
    t.string  "url",          limit: 255
    t.integer "track_number", limit: 4
    t.string  "duration",     limit: 255
    t.integer "artist_id",    limit: 4,   null: false
    t.integer "album_id",     limit: 4,   null: false
  end

  add_index "songs", ["album_id"], name: "index_songs_on_album_id", using: :btree
  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",        limit: 20
    t.string   "email",           limit: 255, null: false
    t.string   "password_digest", limit: 255
    t.integer  "pin",             limit: 8,   null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
