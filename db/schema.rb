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

ActiveRecord::Schema.define(version: 20161129080818) do

  create_table "instruments", force: :cascade do |t|
    t.string "name"
  end

  create_table "notes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "role"
    t.integer  "rating"
    t.string   "uid"
    t.integer  "attitude"
    t.boolean  "star_sub"
    t.integer  "musical_maturity"
    t.integer  "reads_music"
    t.integer  "harmony_singer"
    t.integer  "user_id"
    t.integer  "production_id"
    t.integer  "profile_id"
    t.integer  "note_id"
  end

  create_table "notes_instruments", force: :cascade do |t|
    t.integer "note_id"
    t.integer "instrument_id"
  end

  create_table "productions", force: :cascade do |t|
    t.string   "name"
    t.string   "company"
    t.datetime "opening_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.text     "photo_url"
    t.text     "resume_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
