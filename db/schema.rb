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

ActiveRecord::Schema.define(version: 20151122210405) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "name"
    t.string   "venue"
    t.string   "street_address"
    t.string   "city"
    t.string   "zip"
    t.string   "website"
    t.text     "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "state_id"
  end

  add_index "activities", ["state_id"], name: "index_activities_on_state_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.string   "name"
    t.text     "comment"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "comments", ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type", using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "venue"
    t.string   "street_address"
    t.string   "city"
    t.string   "zip"
    t.string   "website"
    t.text     "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "state_id"
  end

  add_index "events", ["state_id"], name: "index_events_on_state_id", using: :btree

  create_table "rsvps", force: :cascade do |t|
    t.string   "name"
    t.string   "transportation"
    t.text     "comment"
    t.integer  "rsvpable_id"
    t.string   "rsvpable_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "rsvps", ["rsvpable_id", "rsvpable_type"], name: "index_rsvps_on_rsvpable_id_and_rsvpable_type", using: :btree

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "activities", "states"
  add_foreign_key "events", "states"
end
