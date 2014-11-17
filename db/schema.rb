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

ActiveRecord::Schema.define(version: 20141117005849) do

  create_table "notes", force: true do |t|
    t.integer  "bar"
    t.integer  "beat"
    t.integer  "duration"
    t.integer  "drum"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sequence_id"
    t.string   "hand"
  end

  create_table "sequences", force: true do |t|
    t.string   "title"
    t.string   "artist"
    t.integer  "bpm",          default: 100
    t.integer  "meter_top"
    t.integer  "meter_bottom"
    t.integer  "bars"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "midi"
  end

  create_table "sessions", force: true do |t|
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sequence_id"
    t.integer  "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
