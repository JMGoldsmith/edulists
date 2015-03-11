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

ActiveRecord::Schema.define(version: 20150311222024) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_tags", force: :cascade do |t|
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "source"
    t.string   "type"
    t.string   "description"
    t.integer  "price"
    t.string   "price_type"
    t.string   "start_date"
    t.string   "end_date"
    t.boolean  "in_playlist"
    t.boolean  "completed"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "curriculum_course", force: :cascade do |t|
  end

  create_table "curriculums", force: :cascade do |t|
    t.string   "curriculum_name"
    t.string   "description"
    t.string   "notes"
    t.string   "materials"
    t.integer  "overall_cost"
    t.integer  "time_to_complete"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "playlist_course", force: :cascade do |t|
  end

  create_table "playlists", force: :cascade do |t|
    t.string   "playlist_name"
    t.string   "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "user_curriculum", force: :cascade do |t|
  end

  create_table "user_playlist", force: :cascade do |t|
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "display_name"
    t.string   "city"
    t.string   "start_date"
    t.string   "country"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
