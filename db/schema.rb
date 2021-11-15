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

ActiveRecord::Schema.define(version: 2021_11_15_202446) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.text "venue"
    t.datetime "datetime"
    t.integer "home_score"
    t.integer "away_score"
    t.integer "home_id"
    t.integer "away_id"
    t.text "status"
    t.integer "round"
    t.string "division"
    t.integer "home_balance"
    t.integer "away_balance"
    t.integer "home_drinks_id"
    t.integer "away_drinks_id"
    t.integer "home_votes", default: [], array: true
    t.integer "away_votes", default: [], array: true
    t.integer "home_available_ids", default: [], array: true
    t.integer "away_available_ids", default: [], array: true
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "division"
    t.integer "captain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "name"
    t.integer "team_id"
    t.boolean "admin", default: false
    t.boolean "captain", default: false
    t.integer "balance"
    t.integer "fines"
    t.integer "votes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
